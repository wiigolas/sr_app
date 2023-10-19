import 'package:sr_app/exports/exports.dart';

List<Widget> getPrograms(List<Program> programs) {
  List<Widget> programsList = [];

  for (Program program in programs) {
    programsList.add(
      ProgramsCard(
        program: program,
      ),
    );
  }

  return programsList;
}
