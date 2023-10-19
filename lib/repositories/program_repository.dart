import 'package:http/http.dart' as http;
import 'package:sr_app/exports/exports.dart';

class ProgramRepository {
  Future<ProgramResponse> fetchPaginatedPrograms({
    int page = 1,
  }) async {
    try {
      final Uri requestUri = Uri.parse(getProgramsUrl);

      final http.Response httpResponse = await http.get(
        requestUri,
      );

      print(httpResponse.body);

      return SuccessfulProgramResponse();
    } catch (_) {
      return FailedProgramResponse();
    }
  }
}
