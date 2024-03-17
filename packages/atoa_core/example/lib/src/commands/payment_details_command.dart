import 'package:args/command_runner.dart';
import 'package:atoa_core/atoa_core.dart';
import 'package:mason_logger/mason_logger.dart';

/// {@template payment_details_command}
/// A command which gets the payment details of `paymentRequestId`
/// {@endtemplate}
class PaymentDetailsCommand extends Command<int> {
  /// {@macro payment_details_command}
  PaymentDetailsCommand({
    required Logger logger,
    required Atoa atoa,
  })  : _logger = logger,
        _atoa = atoa {
    argParser.addOption(
      'paymentRequestId',
      abbr: 'p',
      help: 'Prints payment details of given ID',
      mandatory: true,
    );
  }

  final Logger _logger;
  final Atoa _atoa;

  @override
  String get description => 'Gets the payment details of `paymentRequestId`.';

  static const String commandName = 'details';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final fetchingPaymentProgress =
        _logger.progress('Fetching payment details...');

    try {
      final paymentId = argResults?['paymentRequestId'] as String?;

      if (paymentId == null) {
        throw const AtoaException(
          AtoaExceptionType.custom,
          'Payment ID not given',
        );
      }

      final res = await _atoa.getPaymentDetails(paymentId);

      _logger.progress('Getting payment auth...');

      final body = res.toBody(
        institutionId: 'lloyds-sandbox',
        features: [
          'ACCOUNTS',
          'ACCOUNT_REQUEST_DETAILS',
          'INITIATE_DOMESTIC_PERIODIC_PAYMENT',
          'ACCOUNT_DIRECT_DEBITS',
          'INITIATE_SINGLE_PAYMENT_SORTCODE',
          'READ_DOMESTIC_SINGLE_REFUND',
          'ACCOUNT_STATEMENTS',
          'ACCOUNT_TRANSACTIONS',
          'INITIATE_DOMESTIC_SINGLE_PAYMENT',
          'CREATE_DOMESTIC_SCHEDULED_PAYMENT',
          'INITIATE_ACCOUNT_REQUEST',
          'EXISTING_PAYMENTS_DETAILS',
          'ACCOUNT_TRANSACTIONS_WITH_MERCHANT',
          'READ_DOMESTIC_PERIODIC_PAYMENT_REFUND',
          'CREATE_SINGLE_PAYMENT_SORTCODE',
          'PERIODIC_PAYMENT_FREQUENCY_EXTENDED',
          'CREATE_DOMESTIC_PERIODIC_PAYMENT',
          'INITIATE_DOMESTIC_SCHEDULED_PAYMENT',
          'READ_DOMESTIC_SCHEDULED_REFUND',
          'ACCOUNT_SCHEDULED_PAYMENTS',
          'ACCOUNT',
          'ACCOUNT_PERIODIC_PAYMENTS',
          'EXISTING_PAYMENT_INITIATION_DETAILS',
          'CREATE_DOMESTIC_SINGLE_PAYMENT',
          'ACCOUNT_STATEMENT_FILE',
        ],
        paymentRequestId: paymentId,
      );

    final authRes = await _atoa.getPaymentAuth(body);

      _logger
        ..write(res.toString())
        ..write('\nAuth Res...\n')
        ..write(authRes.toString());
    } on AtoaException catch (e) {
      fetchingPaymentProgress.fail();
      _logger.err(e.message);
      return ExitCode.software.code;
    } catch (error) {
      fetchingPaymentProgress.fail();
      _logger.err('$error');
      return ExitCode.software.code;
    }

    return ExitCode.success.code;
  }
}
