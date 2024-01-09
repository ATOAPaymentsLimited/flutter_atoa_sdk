import 'package:args/command_runner.dart';
import 'package:atoa_core/atoa_core.dart';
import 'package:mason_logger/mason_logger.dart';

/// {@template fetch_banks}
/// A command which fetches banks from the CLI.
/// {@endtemplate}
class FetchBanksCommand extends Command<int> {
  /// {@macro fetch_banks}
  FetchBanksCommand({
    required Logger logger,
  })  : _logger = logger,
        _atoa = Atoa();

  final Logger _logger;

  final Atoa _atoa;

  @override
  String get description => 'Fetch the Banks.';

  static const String commandName = 'fetch';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final fetchingBanksProgress = _logger.progress('Fetching banks...');

    final initializingClientProgress =
        _logger.progress('Initializing Atoa client...');

    try {
      Atoa.apiKey = 'test-key';
      Atoa.env = AtoaEnv.sandbox;

      await _atoa.initialize();
      initializingClientProgress.complete('Atoa Client intialized');
    } on AtoaException catch (e) {
      initializingClientProgress.fail();
      fetchingBanksProgress.fail();
      _logger.err(e.message);
      return ExitCode.software.code;
    } catch (error) {
      initializingClientProgress.fail();
      fetchingBanksProgress.fail();
      _logger.err('$error');
      return ExitCode.software.code;
    }

    try {
      final res = await _atoa.fetchInstitutions();

      final bankNames = res.map((e) => e.fullName).join('\n');
      _logger.write(bankNames);
    } on AtoaException catch (e) {
      fetchingBanksProgress.fail();
      _logger.err(e.message);
      return ExitCode.software.code;
    } catch (error) {
      fetchingBanksProgress.fail();
      _logger.err('$error');
      return ExitCode.software.code;
    }

    return ExitCode.success.code;
  }
}
