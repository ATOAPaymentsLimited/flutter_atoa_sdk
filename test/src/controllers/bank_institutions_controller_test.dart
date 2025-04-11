import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'bank_institutions_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Atoa>()])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockAtoa mockAtoa;
  late BankInstitutionsController controller;
  const launchVpnMethodChannel = MethodChannel('launch_vpn');
  const urlLaunchMethodChannel =
      MethodChannel('plugins.flutter.io/url_launcher');

  setUp(() {
    mockAtoa = MockAtoa();
    controller = BankInstitutionsController(atoa: mockAtoa);
  });

  tearDown(() {
    controller.dispose();
  });

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(launchVpnMethodChannel,
          (MethodCall methodCall) async {
    switch (methodCall.method) {
      case 'isAppInstalled':
        return;
    }
    return null;
  });

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(urlLaunchMethodChannel,
          (MethodCall methodCall) async {
    switch (methodCall.method) {
      case 'launch':
        return;
    }
    return null;
  });

  group('BankInstitutionsController Tests', () {
    mockAtoa = MockAtoa();

    const mockBanks = [
      BankInstitution(
        id: 'bank1',
        name: 'Test Bank 1',
        features: ['feature1'],
        fullName: 'Test Bank 1',
        media: [],
        orderBy: 1,
      ),
      BankInstitution(
        id: 'bank2',
        name: 'Test Bank 2',
        businessBank: true,
        features: ['feature2'],
        fullName: 'Test Bank 2',
        media: [],
        orderBy: 1,
      ),
    ];

    test('Initial state should be correct', () {
      expect(controller.state.isLoading, null);
      expect(controller.state.bankList, isEmpty);
      expect(controller.state.error, isNull);
    });

    group('fetchBanks', () {
      test('should update state with banks when successful', () async {
        when(mockAtoa.fetchInstitutions()).thenAnswer((_) async => mockBanks);

        await controller.fetchBanks();

        expect(controller.state.bankList, mockBanks);
        expect(controller.state.isLoading, false);
        expect(controller.state.error, isNull);
      });

      test('should handle AtoaException', () async {
        const exception =
            AtoaException(AtoaExceptionType.noDataFound, 'Test error');
        when(mockAtoa.fetchInstitutions()).thenThrow(exception);

        await controller.fetchBanks();

        expect(controller.state.bankList, isEmpty);
        expect(controller.state.isLoading, false);
        expect(controller.state.error, isNull);
      });

      test('should handle general Exception in fetchBanks', () async {
        final exception = Exception('Network error');
        when(mockAtoa.fetchInstitutions()).thenThrow(exception);

        await controller.fetchBanks();

        expect(controller.state.bankList, isEmpty);
        expect(controller.state.isLoading, false);
        expect(controller.state.error, isNull);
      });
    });

    group('fetchFilteredBanks', () {
      test('should filter banks by search term', () async {
        const searchTerm = 'Test Bank 1';
        when(mockAtoa.fetchInstitutions(searchTerm: searchTerm))
            .thenAnswer((_) async => [mockBanks[0]]);

        await controller.fetchFilteredBanks(searchTerm, refresh: true);

        expect(controller.state.bankList, [mockBanks[0]]);
        expect(controller.state.isLoadingFilterBanks, false);
      });

      test('should handle empty search results', () async {
        const searchTerm = 'Nonexistent Bank';
        when(mockAtoa.fetchInstitutions(searchTerm: searchTerm))
            .thenAnswer((_) async => []);

        await controller.fetchFilteredBanks(searchTerm, refresh: true);

        expect(controller.state.bankList, isEmpty);
        expect(controller.state.isLoadingFilterBanks, false);
      });

      test('should handle general Exception in fetchFilteredBanks', () async {
        final exception = Exception('Network error');
        when(mockAtoa.fetchInstitutions(searchTerm: 'test'))
            .thenThrow(exception);

        await controller.fetchFilteredBanks('test', refresh: true);

        expect(controller.state.bankList, isEmpty);
        expect(controller.state.isLoadingFilterBanks, false);
        expect(controller.state.error, isNull);
      });

      test('should handle AtoaException in fetchFilteredBanks', () async {
        const exception = AtoaException(
          AtoaExceptionType.noDataFound,
          'No banks found',
        );
        when(mockAtoa.fetchInstitutions(searchTerm: 'test'))
            .thenThrow(exception);

        await controller.fetchFilteredBanks('test', refresh: true);

        expect(controller.state.bankList, isEmpty);
        expect(controller.state.isLoadingFilterBanks, false);
        expect(controller.state.error, isNull);
      });
    });

    group('selectBank', () {
      const mockPaymentDetails = PaymentRequestData(
        amount: Amount(amount: 100),
        requestCreatedAt: '2024-03-07',
        merchantBusinessName: 'Test Business',
        merchantId: '',
        taxPercentage: 0,
        servicePercentage: 0,
      );
      const mockPaymentAuth = PaymentAuthResponse(
        authorisationUrl: 'https://test.com',
        deepLinkAndroidAuthorisationUrl: 'app://test',
        deepLinkAuthorisationUrlIOS: 'app://test',
        androidPackageName: 'com.test',
        iOSPackageName: 'com.test',
        paymentIdempotencyId: 'ATOA123',
      );

      setUp(() {
        controller = BankInstitutionsController(atoa: mockAtoa);
        controller.state = controller.state.copyWith(
          paymentDetails: mockPaymentDetails,
        );
      });

      test('should update state with selected bank and auth details', () async {
        when(mockAtoa.getPaymentAuth(any))
            .thenAnswer((_) async => mockPaymentAuth);

        await controller.selectBank(mockBanks[0]);

        expect(controller.state.selectedBank, mockBanks[0]);
        expect(controller.state.paymentAuth, mockPaymentAuth);
        expect(controller.state.isLoadingAuth, false);
        expect(controller.state.bankAuthError, isNull);
      });

      test('should handle auth error', () async {
        const exception =
            AtoaException(AtoaExceptionType.noDataFound, 'Test error');
        when(mockAtoa.getPaymentAuth(any)).thenThrow(exception);

        await controller.selectBank(mockBanks[0]);

        expect(controller.state.selectedBank, isNull);
        expect(controller.state.paymentAuth, isNull);
        expect(controller.state.isLoadingAuth, false);
        expect(controller.state.bankAuthError, exception);
      });
    });

    group('Bank list filtering', () {
      setUp(() {
        controller.state = controller.state.copyWith(bankList: mockBanks);
      });

      test('personalBanks should return only personal banks', () {
        expect(controller.personalBanks.length, 1);
        expect(controller.personalBanks.first.id, 'bank1');
        expect(controller.personalBanks.first.businessBank, false);
      });

      test('businessBanks should return only business banks', () {
        expect(controller.businessBanks.length, 1);
        expect(controller.businessBanks.first.id, 'bank2');
        expect(controller.businessBanks.first.businessBank, true);
      });
    });

    group('Search functionality', () {
      test('should debounce multiple rapid searches', () async {
        when(mockAtoa.fetchInstitutions(searchTerm: 'test2'))
            .thenAnswer((_) async => mockBanks);
        controller
          ..search('test1')
          ..search('test2');

        await Future<void>.delayed(const Duration(milliseconds: 700));
        verify(mockAtoa.fetchInstitutions(searchTerm: 'test2')).called(1);
        verifyNever(mockAtoa.fetchInstitutions(searchTerm: 'test1'));
      });

      test('should update searchTerm property', () {
        const searchTerm = 'test bank';
        controller.search(searchTerm);
        expect(controller.searchTerm, searchTerm);
      });
    });

    group('showHowPaymentWorks property', () {
      test('should update showHowPaymentWorks state', () {
        controller.showHowPaymentWorks = true;
        expect(controller.state.showHowPaymentWorks, true);
        expect(controller.showHowPaymentWorks, true);

        controller.showHowPaymentWorks = false;
        expect(controller.state.showHowPaymentWorks, false);
        expect(controller.showHowPaymentWorks, false);
      });
    });

    group('checkBankAppAvailability', () {
      test('should handle empty package names', () async {
        controller.state = controller.state.copyWith(
          paymentAuth: const PaymentAuthResponse(
            authorisationUrl: 'https://test.com',
            androidPackageName: '',
            iOSPackageName: '',
            paymentIdempotencyId: '',
          ),
        );

        await controller.checkBankAppAvailability();
        expect(controller.state.isAppInstalled, true);
      });

      test('should handle null payment auth', () async {
        await controller.checkBankAppAvailability();
        expect(controller.state.isAppInstalled, true);
      });

      test('should set isAppInstalled to true for empty package names',
          () async {
        controller.state = controller.state.copyWith(
          paymentAuth: const PaymentAuthResponse(
            authorisationUrl: 'https://test.com',
            androidPackageName: '',
            iOSPackageName: '',
            paymentIdempotencyId: '',
          ),
        );

        await controller.checkBankAppAvailability();
        expect(controller.state.isAppInstalled, true);
      });
    });

    group('authorizeBank', () {
      test('should return null when paymentAuth is null', () async {
        final result = await controller.authorizeBank();
        expect(result, isNull);
      });

      test('should clear error state after handling error', () async {
        controller.state = controller.state.copyWith(
          paymentAuth: const PaymentAuthResponse(
            authorisationUrl: 'invalid-url',
            androidPackageName: 'com.test',
            iOSPackageName: 'com.test',
            paymentIdempotencyId: '',
          ),
        );

        await controller.authorizeBank();
        expect(controller.state.error, isNull);
      });
    });

    group('getPaymentDetails error handling', () {
      test('should handle AtoaException and clear error', () async {
        const exception = AtoaException(
          AtoaExceptionType.noDataFound,
          'Payment not found',
        );
        when(mockAtoa.getPaymentDetails(any)).thenThrow(exception);

        await controller.getPaymentDetails();

        expect(controller.state.paymentDetails, isNull);
        expect(controller.state.error, isNull);
        expect(controller.state.isLoadingDetails, false);
      });

      test('should handle general Exception and clear error', () async {
        final exception = Exception('Network error');
        when(mockAtoa.getPaymentDetails(any)).thenThrow(exception);

        await controller.getPaymentDetails();

        expect(controller.state.paymentDetails, isNull);
        expect(controller.state.error, isNull);
        expect(controller.state.isLoadingDetails, false);
      });
    });

    group('selectBank error handling', () {
      test('should handle null bank selection', () async {
        await controller.selectBank(null);

        expect(controller.state.selectedBank, isNull);
        expect(controller.state.paymentAuth, isNull);
        expect(controller.state.bankAuthError, isNull);
      });
    });

    group('Exception handling', () {
      test(
          'should handle general Exception in getPaymentAuth during selectBank',
          () async {
        final exception = Exception('Network error');

        controller.state = controller.state.copyWith(
          paymentDetails: const PaymentRequestData(
            amount: Amount(amount: 100),
            requestCreatedAt: '2024-03-07',
            merchantBusinessName: 'Test Business',
            merchantId: '',
            taxPercentage: 0,
            servicePercentage: 0,
          ),
        );

        when(mockAtoa.getPaymentAuth(any)).thenThrow(exception);

        await controller.selectBank(
          const BankInstitution(
            id: 'test',
            name: 'Test Bank',
            features: [],
            fullName: 'Test Bank',
            media: [],
            orderBy: 1,
          ),
        );

        expect(controller.state.selectedBank, isNull);
        expect(controller.state.isLoadingAuth, false);
        expect(controller.state.paymentAuth, isNull);
        expect(controller.state.bankAuthError, exception);
      });
    });

    test(
      'should handle general Exception in getPaymentAuth during selectBank',
      () async {
        controller.resetSelectBank();
        expect(controller.state.selectedBank, null);
      },
    );
  });

  group('Payment details', () {
    test('should fetch and update payment details', () async {
      const mockPaymentDetails = PaymentRequestData(
        amount: Amount(amount: 100),
        requestCreatedAt: '2024-03-07',
        merchantBusinessName: 'Test Business',
        merchantId: '',
        taxPercentage: 0,
        servicePercentage: 0,
        merchantThemeDetails: MerchantThemeDetails(
          colorCode: '#434456',
          foregroundColor: '#b231156',
        ),
      );

      when(mockAtoa.getPaymentDetails(any))
          .thenAnswer((_) async => mockPaymentDetails);

      await controller.getPaymentDetails();

      expect(
        BrandingColorUtility.getColor(
          controller.state.paymentDetails?.merchantThemeDetails?.colorCode ??
              '',
        ),
        Color(int.parse('0xFF434456')),
      );
      expect(controller.state.paymentDetails, mockPaymentDetails);
      expect(controller.state.isLoadingDetails, false);
    });
  });
}
