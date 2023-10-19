import 'package:sr_app/exports/exports.dart';

class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  ProgramRepository programRepository;

  ProgramBloc({
    required this.programRepository,
  }) : super(const ProgramState()) {
    on<FetchProgramEvent>(_onFetchProgramEvent);
  }

  void _onFetchProgramEvent(
    FetchProgramEvent event,
    Emitter<ProgramState> emit,
  ) async {
    programRepository.fetchPaginatedPrograms();
  }
}
