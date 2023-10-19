abstract class ProgramResponse {}

class SuccessfulProgramResponse implements ProgramResponse {
  SuccessfulProgramResponse();
}

class FailedProgramResponse implements ProgramResponse {
  FailedProgramResponse();
}
