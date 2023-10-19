import 'package:sr_app/exports/exports.dart';

class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  ProgramRepository programRepository;

  ProgramBloc({
    required this.programRepository,
  }) : super(const ProgramState()) {
    on<FetchProgramsEvent>(_onFetchProgramsEvent);
  }

  void _onFetchProgramsEvent(
    FetchProgramsEvent event,
    Emitter<ProgramState> emit,
  ) async {
    if (event.page <= state.totalPages) {
      final ProgramState prevState = state;
      emit(
        ProgramLoadingState(
          state: prevState,
        ),
      );

      ProgramResponse response = await programRepository.fetchPaginatedPrograms(
        page: event.page,
      );

      if (response is SuccessfulProgramResponse) {
        List<Program> programs = event.page == 1
            ? response.programs
            : [
                ...prevState.programs,
                ...response.programs,
              ];

        emit(
          prevState.update(
            page: response.page,
            programs: programs,
            totalPages: response.totalPages,
          ),
        );
      }
    }
  }
}
