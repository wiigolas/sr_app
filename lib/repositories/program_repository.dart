import 'package:http/http.dart' as http;
import 'package:sr_app/exports/exports.dart';

class ProgramRepository {
  Future<ProgramResponse> fetchPaginatedPrograms({
    int page = 1,
  }) async {
    try {
      final Uri requestUri = Uri.parse(
        '$getProgramsUrl&page=$page',
      );

      final http.Response httpResponse = await http.get(
        requestUri,
      );

      final Map<String, dynamic> response = json.decode(
        utf8.decode(httpResponse.bodyBytes),
      ) as Map<String, dynamic>;

      final List<Program> programs = <Program>[];

      for (Map<String, dynamic> program in response['programs']) {
        programs.add(
          Program.fromMap(program),
        );
      }

      return SuccessfulProgramResponse(
        programs: programs,
      );
    } catch (_) {
      return FailedProgramResponse();
    }
  }
}
