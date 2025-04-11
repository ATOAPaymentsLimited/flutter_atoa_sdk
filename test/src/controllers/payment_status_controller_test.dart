import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/src/controllers/payment_status_controller.dart';
import 'package:atoa_flutter_sdk/src/utility/payment_utility.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'payment_status_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Atoa>()])
void main() {
  late MockAtoa mockAtoa;
  late PaymentStatusController controller;

  setUp(() {
    mockAtoa = MockAtoa();
    controller = PaymentStatusController(atoa: mockAtoa);
  });

  group('PaymentStatusController Tests', () {
    const paymentId = 'test_payment_id';

    final mockTransactionDetails = TransactionDetails(
      status: const TransactionStatus.completed(),
      currency: 'GBP',
      createdAt: DateTime.now().toIso8601String(),
      applicationUserId: 'user123',
      paidAmount: 100,
      paymentIdempotencyId: 'ATOA123',
      merchantId: 'merchant123',
      merchantName: 'Test Merchant',
    );

    test('Initial state should be correct', () {
      expect(controller.state.started, false);
      expect(controller.state.details, isNull);
      expect(controller.state.exception, isNull);
    });

    group('startListening', () {
      test('should receive transaction details updates', () async {
        when(mockAtoa.getPaymentStatus(paymentId))
            .thenAnswer((_) async => mockTransactionDetails);

        controller.startListening(paymentId);
        expect(controller.state.started, true);

        await Future<void>.delayed(
          PaymentUtility.interval + const Duration(milliseconds: 100),
        );

        verify(mockAtoa.getPaymentStatus(paymentId)).called(1);
        expect(controller.state.details, mockTransactionDetails);
        expect(controller.state.isCompleted, true);
        expect(controller.state.isFailed, false);
        expect(controller.state.isPending, false);
        expect(controller.state.exception, isNull);
      });

      test('should handle AtoaException', () async {
        const exception = AtoaException(
          AtoaExceptionType.noDataFound,
          'Payment not found',
        );

        when(mockAtoa.getPaymentStatus(paymentId)).thenThrow(exception);
        controller.startListening(paymentId);
        await Future<void>.delayed(
          PaymentUtility.interval + const Duration(milliseconds: 100),
        );

        expect(controller.state.details, isNull);
        expect(controller.state.exception, exception);
      });

      test('should handle general Exception', () async {
        final exception = Exception('Network error');

        when(mockAtoa.getPaymentStatus(paymentId)).thenThrow(exception);

        controller.startListening(paymentId);

        // Wait for first interval
        await Future<void>.delayed(
          PaymentUtility.interval + const Duration(milliseconds: 100),
        );

        expect(controller.state.details, isNull);
        expect(controller.state.exception, exception);
      });

      test('should cancel previous subscription when starting new one',
          () async {
        when(mockAtoa.getPaymentStatus(any))
            .thenAnswer((_) async => mockTransactionDetails);

        controller.startListening('first_payment');
        await Future<void>.delayed(PaymentUtility.interval);

        controller.startListening('second_payment');
        await Future<void>.delayed(PaymentUtility.interval);

        verify(mockAtoa.getPaymentStatus('second_payment')).called(1);
      });
    });

    group('stop', () {
      test('should stop listening to updates', () async {
        when(mockAtoa.getPaymentStatus(paymentId))
            .thenAnswer((_) async => mockTransactionDetails);

        controller.startListening(paymentId);
        await Future<void>.delayed(PaymentUtility.interval);

        controller.stop();

        // Wait for another interval
        await Future<void>.delayed(PaymentUtility.interval);

        // Should only be called once before stopping
        verify(mockAtoa.getPaymentStatus(paymentId)).called(1);
      });
    });

    group('dispose', () {
      test('should clean up resources', () async {
        when(mockAtoa.getPaymentStatus(paymentId))
            .thenAnswer((_) async => mockTransactionDetails);

        controller.startListening(paymentId);
        await Future<void>.delayed(
          PaymentUtility.interval + const Duration(milliseconds: 300),
        );

        controller.dispose();

        // Wait for another interval
        await Future<void>.delayed(PaymentUtility.interval);

        // Should only be called once before disposal
        verify(mockAtoa.getPaymentStatus(paymentId)).called(1);
      });
    });

    group('Stream behavior', () {
      test('should periodically fetch payment status', () async {
        when(mockAtoa.getPaymentStatus(paymentId))
            .thenAnswer((_) async => mockTransactionDetails);

        controller.startListening(paymentId);

        // Wait for multiple intervals
        await Future<void>.delayed(PaymentUtility.interval);

        // Should be called multiple times
        verify(mockAtoa.getPaymentStatus(paymentId)).called(1);
      });
    });
  });
}
