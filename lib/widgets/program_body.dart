import 'package:sr_app/exports/exports.dart';

class ProgramBody extends StatelessWidget {
  const ProgramBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProgramProvider>(
      builder: (_, ProgramProvider provider, __) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(provider.program.image),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(provider.program.description),
              ),
            ],
          ),
        );
      },
    );
  }
}
