import 'dart:io';

import 'package:dio/dio.dart';
import 'package:getx_clean_architecture/core/constants/constants.dart';
import 'package:getx_clean_architecture/core/resources/data_state.dart';
import 'package:getx_clean_architecture/features/news/data/data_sources/remote/news_api_service.dart';
import 'package:getx_clean_architecture/features/news/data/models/articles.dart';
import 'package:getx_clean_architecture/features/news/domain/repositories/aricle_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl({required NewsApiService newsApiService})
      : _newsApiService = newsApiService;

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: apiKey,
        category: categoryQuery,
        country: categoryQuery,
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return Future.error(DataFailed(DioException(
          requestOptions: httpResponse.response.requestOptions,
          error: httpResponse.response.statusMessage,
          type: DioExceptionType.badResponse,
          response: httpResponse.response,
        )));
      }
    } on DioException catch (e) {
      return Future.error(DataFailed(e));
    }
  }
}
