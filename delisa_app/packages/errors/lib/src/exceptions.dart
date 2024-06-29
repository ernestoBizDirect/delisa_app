// ignore_for_file: public_member_api_docs

/// Server Exception
class ServerException implements Exception {
  ServerException({this.message});

  String? message;
}

/// Cache Exception
class CacheException implements Exception {
  CacheException({this.message});

  String? message;
}
