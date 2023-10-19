import 'package:sr_app/exports/exports.dart';

@immutable
abstract class ProgramEvent extends Equatable {
  @override
  List<Object> get props => throw UnimplementedError();

  const ProgramEvent();
}

class FetchProgramsEvent extends ProgramEvent {
  final int page;

  const FetchProgramsEvent({
    this.page = 1,
  });
}
