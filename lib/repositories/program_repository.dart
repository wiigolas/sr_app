import 'package:sr_app/exports/exports.dart';

class ProgramRepository {
  Future<ProgramResponse> fetchPaginatedPrograms({
    int page = 1,
  }) {
    try {
      final Uri requestUri = Uri.parse(getProgramsUrl);
    } catch (_) {}
  }
}
