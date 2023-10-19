import 'package:sr_app/exports/exports.dart';

abstract class ProgramResponse {}

class SuccessfulProgramResponse implements ProgramResponse {
  final int page;
  final List<Program> programs;
  final int totalPages;

  SuccessfulProgramResponse({
    required this.page,
    required this.programs,
    required this.totalPages,
  });
}

class FailedProgramResponse implements ProgramResponse {
  FailedProgramResponse();
}
