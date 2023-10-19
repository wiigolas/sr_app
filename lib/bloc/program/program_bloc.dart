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
    ProgramResponse response = await programRepository.fetchPaginatedPrograms();

    if (response is SuccessfulProgramResponse) {
      emit(
        state.update(
          programs: response.programs,
        ),
      );
    }
  }
}
