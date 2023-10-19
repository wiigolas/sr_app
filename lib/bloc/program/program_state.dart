import 'package:sr_app/exports/exports.dart';

@immutable
class ProgramState extends Equatable {
  const ProgramState();

  @override
  List<Object?> get props => [];

  ProgramState update() {
    return copyWith();
  }

  ProgramState copyWith() {
    return ProgramState();
  }
}
