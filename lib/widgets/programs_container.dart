import 'package:sr_app/exports/exports.dart';

class ProgramsContainer extends StatelessWidget {
  const ProgramsContainer({super.key});

  List<Widget> getPrograms(ProgramState state) {
    List<Widget> programsList = [];

    for (Program program in state.programs) {
      programsList.add(
        ProgramCard(
          program: program,
        ),
      );
    }

    return programsList;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramBloc, ProgramState>(builder: (
      _,
      ProgramState state,
    ) {
      return GridView.count(
        crossAxisCount: 2,
        children: [
          ...getPrograms(state),
        ],
      );
    });
  }
}
