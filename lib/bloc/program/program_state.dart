import 'package:sr_app/exports/exports.dart';

@immutable
class ProgramState extends Equatable {
  final List<Program> programs;

  const ProgramState({
    this.programs = const <Program>[],
  });

  @override
  List<Object?> get props => [
        programs,
      ];

  ProgramState update({
    List<Program>? programs,
  }) {
    return copyWith(
      programs: programs,
    );
  }

  ProgramState copyWith({
    List<Program>? programs,
  }) {
    return ProgramState(
      programs: programs ?? this.programs,
    );
  }
}
