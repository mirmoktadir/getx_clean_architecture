import 'package:getx_clean_architecture/core/resources/data_state.dart';
import 'package:getx_clean_architecture/core/usecases/usecase.dart';
import 'package:getx_clean_architecture/features/news/domain/entites/article.dart';
import 'package:getx_clean_architecture/features/news/domain/repositories/aricle_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase({required ArticleRepository articleRepository})
      : _articleRepository = articleRepository;
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
