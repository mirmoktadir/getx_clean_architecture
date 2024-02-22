import 'package:getx_clean_architecture/core/resources/data_state.dart';
import 'package:getx_clean_architecture/features/news/domain/entites/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
