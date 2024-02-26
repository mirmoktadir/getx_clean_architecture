import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_clean_architecture/features/user/domain/repositories/user_repository.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/create_user_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_utils/data/test_data.dart';
import 'create_user_usecase_test.mocks.dart';

@GenerateMocks([UserRepository])
void main() {
  late CreateUserUseCase createUserUseCase;
  late MockUserRepository mockUserRepository;

  setUp(
    () {
      mockUserRepository = MockUserRepository();
      createUserUseCase = CreateUserUseCase(mockUserRepository);
    },
  );

  test(
    'Should call createUser from user repository',
    () async {
      when(mockUserRepository.createUser(tUserDummyObject)).thenAnswer(
        (_) async => const Right<String, bool>(true),
      );

      final result = await createUserUseCase
          .call(const CreateUserParams(tUserDummyObject));

      expect(result, const Right<String, bool>(true));

      verify(mockUserRepository.createUser(tUserDummyObject));

      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
