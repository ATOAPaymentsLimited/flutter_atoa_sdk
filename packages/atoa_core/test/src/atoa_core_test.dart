import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_core/src/http_client/http_client.dart';
import 'package:atoa_core/src/models/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'atoa_core_test.mocks.dart';

@GenerateMocks([AtoaDio])
void main() {
  late Atoa atoa;
  late MockAtoaDio mockDio;
  late Interceptors mockInterceptors;

  setUp(() {
    mockDio = MockAtoaDio();
    mockInterceptors = Interceptors();

    // Mock the interceptors property
    when(mockDio.interceptors).thenReturn(mockInterceptors);

    atoa = Atoa();
    Atoa.env = AtoaEnv.sandbox;
    atoa.initialize(mockDio);
  });

  group('Atoa Core Tests', () {
    group('Initialization', () {
      test('should initialize with custom dio instance', () {
        final customDio = MockAtoaDio();
        when(customDio.interceptors).thenReturn(Interceptors());

        expect(() => atoa.initialize(customDio), returnsNormally);
      });
    });

    group('fetchInstitutions', () {
      setUp(() {
        when(mockDio.get<List<dynamic>>(any)).thenAnswer(
          (_) async => Response<List<Map<String, dynamic>>>(
            data: [
              {
                'id': 'test_bank',
                'name': 'Test Bank',
                'features': ['feature1'],
                'fullName': 'Test Bank Full',
                'media': [
                  {'source': 'icon', 'type': 'icon'},
                ],
                'orderBy': 1,
              }
            ],
            requestOptions: RequestOptions(),
          ),
        );
      });

      test('should fetch institutions without search term', () async {
        final institutions = await atoa.fetchInstitutions();
        expect(institutions, isA<List<BankInstitution>>());
        expect(institutions.length, 1);
        expect(institutions.first.id, 'test_bank');
      });

      test('should fetch institutions with search term', () async {
        final institutions = await atoa.fetchInstitutions(searchTerm: 'test');
        expect(institutions, isA<List<BankInstitution>>());
        expect(institutions.length, 1);
      });

      test('should throw exception when no data is returned', () async {
        when(mockDio.get<List<dynamic>>(any)).thenAnswer(
          (_) async => Response<List<dynamic>>(
            requestOptions: RequestOptions(),
          ),
        );

        expect(
          () => atoa.fetchInstitutions(),
          throwsA(
            isA<AtoaException>().having(
              (e) => e.type,
              'type',
              AtoaExceptionType.noDataFound,
            ),
          ),
        );
      });
    });

    group('getPaymentDetails', () {
      const mockPaymentId = 'test_payment_id';
      final mockResponse = {
        'amount': {'amount': 100},
        'requestCreatedAt': '2024-03-07',
        'merchantBusinessName': 'Test Business',
        'merchantId': 'merchant_id',
        'taxPercentage': 0,
        'servicePercentage': 0,
      };

      test('should get payment details successfully', () async {
        when(mockDio.post<Map<String, dynamic>>(any, data: anyNamed('data')))
            .thenAnswer(
          (_) async => Response<Map<String, dynamic>>(
            data: mockResponse,
            requestOptions: RequestOptions(),
          ),
        );

        final details = await atoa.getPaymentDetails(mockPaymentId);
        expect(details, isA<PaymentRequestData>());
        expect(details.amount.amount, 100);
        expect(details.merchantBusinessName, 'Test Business');
      });

      test('should throw exception when no data is returned', () async {
        when(mockDio.post<Map<String, dynamic>>(any, data: anyNamed('data')))
            .thenAnswer(
          (_) async => Response<Map<String, dynamic>>(
            requestOptions: RequestOptions(),
          ),
        );

        expect(
          () => atoa.getPaymentDetails(mockPaymentId),
          throwsA(
            isA<AtoaException>().having(
              (e) => e.type,
              'type',
              AtoaExceptionType.noDataFound,
            ),
          ),
        );
      });
    });
    group('getPaymentAuth', () {
      final mockRequestBody = PaymentAuthRequestBody(
        merchantId: 'merchantId',
        uniqueUserId: '',
        merchantName: 'merchantBusinessName',
        amount: const Amount(amount: 2),
        applicationUserId: '',
        institutionId: 'institutionId',
        taxPercentage: 0,
        servicePercentage: 0,
        features: [],
        deviceOrigin: 'MOBILE',
        totalAmountDue: 0,
        employeeId: 'employeeId',
        callbackParams: 'callbackParams',
        merchantPaymentOptions: {},
        encryptedNotesDetails: 'encryptedNotesDetails',
        paymentSourceType: 3,
        paymentDevice: DeviceInfo(
          platform: 'MOBILE',
        ),
        paymentRequestSource: const PaymentRequestWithSource(
          requestCreatedAt: '23-03-2024',
          paymentRequestId: '',
        ),
      );

      final mockResponse = {
        'authorisationUrl': 'https://test.com',
        'androidPackageName': 'com.test',
        'iOSPackageName': 'com.test',
        'paymentIdempotencyId': 'test_id',
      };

      test('should get payment auth successfully', () async {
        when(mockDio.post<Map<String, dynamic>>(any, data: anyNamed('data')))
            .thenAnswer(
          (_) async => Response<Map<String, dynamic>>(
            data: mockResponse,
            requestOptions: RequestOptions(),
          ),
        );
        final auth = await atoa.getPaymentAuth(mockRequestBody);
        expect(auth, isA<PaymentAuthResponse>());
        expect(auth.authorisationUrl, 'https://test.com');
        expect(auth.androidPackageName, 'com.test');
      });
      test('should throw exception when no data is returned', () async {
        when(mockDio.post<Map<String, dynamic>>(any, data: anyNamed('data')))
            .thenAnswer(
          (_) async => Response<Map<String, dynamic>>(
            requestOptions: RequestOptions(),
          ),
        );

        expect(
          () => atoa.getPaymentAuth(mockRequestBody),
          throwsA(
            isA<AtoaException>().having(
              (e) => e.type,
              'type',
              AtoaExceptionType.noDataFound,
            ),
          ),
        );
      });
    });

    group('getPaymentStatus', () {
      const mockPaymentId = 'test_payment_id';
      final mockResponse = {
        'paymentIdempotencyId': 'test_transaction',
        'status': 'COMPLETED',
        'amount': {'amount': 100},
        'currency': 'GBP',
        'createdAt': DateTime.now().toIso8601String(),
        'applicationUserId': 'user123',
        'paidAmount': 100,
        'merchantId': 'merchant123',
        'merchantName': 'Test Merchant',
      };

      test('should get payment status successfully', () async {
        when(mockDio.get<Map<String, dynamic>>(any, data: anyNamed('data')))
            .thenAnswer(
          (_) async => Response<Map<String, dynamic>>(
            data: mockResponse,
            requestOptions:
                RequestOptions(path: 'payments/payment-status/$mockPaymentId'),
          ),
        );

        final status = await atoa.getPaymentStatus(mockPaymentId);
        expect(status, isA<TransactionDetails>());
        expect(status.paymentIdempotencyId, 'test_transaction');
        expect(status.status, const TransactionStatus.completed());
      });

      test('should throw exception when no data is returned', () async {
        when(mockDio.get<Map<String, dynamic>>(any)).thenAnswer(
          (_) async => Response<Map<String, dynamic>>(
            requestOptions: RequestOptions(),
          ),
        );

        expect(
          () => atoa.getPaymentStatus(mockPaymentId),
          throwsA(
            isA<AtoaException>().having(
              (e) => e.type,
              'type',
              AtoaExceptionType.noDataFound,
            ),
          ),
        );
      });
    });
  });
}
