import 'package:sr_app/exports/exports.dart';

abstract class ProgramResponse {}

class SuccessfulProgramResponse implements ProgramResponse {
  final List<Program> programs;

  SuccessfulProgramResponse({
    required this.programs,
  });
}

class FailedProgramResponse implements ProgramResponse {
  FailedProgramResponse();
}
