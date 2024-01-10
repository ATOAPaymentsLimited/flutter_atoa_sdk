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

      _logger.write(res.toString());
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
