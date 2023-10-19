import 'package:sr_app/exports/exports.dart';

@immutable
class ProgramState extends Equatable {
  final int page;
  final List<Program> programs;
  final int totalPages;

  const ProgramState({
    this.page = 1,
    this.programs = const <Program>[],
    this.totalPages = 1,
  });

  @override
  List<Object?> get props => [
        page,
        programs,
        totalPages,
      ];

  ProgramState update({
    int? page,
    List<Program>? programs,
    int? totalPages,
  }) {
    return copyWith(
      page: page,
      programs: programs,
      totalPages: totalPages,
    );
  }

  ProgramState copyWith({
    int? page,
    List<Program>? programs,
    int? totalPages,
  }) {
    return ProgramState(
      page: page ?? this.page,
      programs: programs ?? this.programs,
      totalPages: totalPages ?? this.totalPages,
    );
  }
}

class ProgramLoadingState extends ProgramState {
  ProgramLoadingState({
    required ProgramState state,
  }) : super(
          page: state.page,
          programs: state.programs,
          totalPages: state.totalPages,
        );
}
