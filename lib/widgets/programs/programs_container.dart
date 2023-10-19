import 'package:sr_app/exports/exports.dart';

class ProgramsContainer extends StatelessWidget {
  const ProgramsContainer({super.key});

  List<Widget> getPrograms(ProgramState state) {
    List<Widget> programsList = [];

    for (Program program in state.programs) {
      programsList.add(
        ProgramsCard(
          program: program,
        ),
      );
    }

    return programsList;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramBloc, ProgramState>(
      builder: (
        _,
        ProgramState state,
      ) {
        return Stack(
          children: [
            InfiniteScroll(
              scrollFunction: () {
                context.read<ProgramBloc>().add(
                      FetchProgramsEvent(page: state.page + 1),
                    );
              },
              renderChild: (ScrollController scrollController) =>
                  GridView.count(
                controller: scrollController,
                crossAxisCount: 2,
                children: [
                  ...getPrograms(state),
                ],
              ),
            ),
            if (state is ProgramLoadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        );
      },
    );
  }
}
