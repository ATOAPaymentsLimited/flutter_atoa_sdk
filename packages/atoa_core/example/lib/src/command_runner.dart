import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:atoa_core/atoa_core.dart';
import 'package:cli_completion/cli_completion.dart';
import 'package:example/src/commands/commands.dart';
import 'package:example/src/version.dart';
import 'package:mason_logger/mason_logger.dart';

const executableName = 'example';
const packageName = 'example';
const description = 'Atoa Core Example';

/// {@template example_command_runner}
/// A [CommandRunner] for the CLI.
///
/// ```
/// $ example --version
/// ```
/// {@endtemplate}
class ExampleCommandRunner extends CompletionCommandRunner<int> {
  /// {@macro example_command_runner}
  ExampleCommandRunner({
    Logger? logger,
    Atoa? atoa,
  })  : _logger = logger ?? Logger(),
        _atoa = atoa ?? Atoa(),
        super(executableName, description) {
    // Add root options and flags
    argParser
      ..addFlag(
        'version',
        abbr: 'v',
        negatable: false,
        help: 'Print the current version.',
      )
      ..addFlag(
        'verbose',
        help: 'Noisy logging, including all shell commands executed.',
      );

    // Add sub commands
    addCommand(SampleCommand(logger: _logger));
    addCommand(FetchBanksCommand(logger: _logger, atoa: _atoa));
    addCommand(PaymentDetailsCommand(logger: _logger, atoa: _atoa));
  }

  @override
  void printUsage() => _logger.info(usage);

  final Logger _logger;
  final Atoa _atoa;

  @override
  Future<int> run(Iterable<String> args) async {
    try {
      final topLevelResults = parse(args);
      if (topLevelResults['verbose'] == true) {
        _logger.level = Level.verbose;
      }
      return await runCommand(topLevelResults) ?? ExitCode.success.code;
    } on FormatException catch (e, stackTrace) {
      // On format errors, show the commands error message, root usage and
      // exit with an error code
      _logger
        ..err(e.message)
        ..err('$stackTrace')
        ..info('')
        ..info(usage);
      return ExitCode.usage.code;
    } on UsageException catch (e) {
      // On usage errors, show the commands usage message and
      // exit with an error code
      _logger
        ..err(e.message)
        ..info('')
        ..info(e.usage);
      return ExitCode.usage.code;
    }
  }

  @override
  Future<int?> runCommand(ArgResults topLevelResults) async {
    // Fast track completion command
    if (topLevelResults.command?.name == 'completion') {
      await super.runCommand(topLevelResults);
      return ExitCode.success.code;
    }

    // Verbose logs
    _logger
      ..detail('Argument information:')
      ..detail('  Top level options:');
    for (final option in topLevelResults.options) {
      if (topLevelResults.wasParsed(option)) {
        _logger.detail('  - $option: ${topLevelResults[option]}');
      }
    }
    if (topLevelResults.command != null) {
      final commandResult = topLevelResults.command!;
      _logger
        ..detail('  Command: ${commandResult.name}')
        ..detail('    Command options:');
      for (final option in commandResult.options) {
        if (commandResult.wasParsed(option)) {
          _logger.detail('    - $option: ${commandResult[option]}');
        }
      }
    }

    // Run the command or show version
    int? exitCode;
    if (topLevelResults['version'] == true) {
      _logger.info(packageVersion);
      exitCode = ExitCode.success.code;
    } else {
      exitCode = await _initializeAtoaClient();

      if (exitCode != null) {
        return exitCode;
      }

      exitCode = await super.runCommand(topLevelResults);
    }

    return exitCode;
  }

  Future<int?> _initializeAtoaClient() async {
    final initializingClientProgress =
        _logger.progress('Initializing Atoa client...');

    try {
      Atoa.env = AtoaEnv.sandbox;

      _atoa.initialize();
      initializingClientProgress.complete('Atoa Client intialized');
    } on AtoaException catch (e) {
      initializingClientProgress.fail();
      _logger.err(e.message);
      return ExitCode.software.code;
    } catch (error) {
      initializingClientProgress.fail();
      _logger.err('$error');
      return ExitCode.software.code;
    }

    return null;
  }
}
