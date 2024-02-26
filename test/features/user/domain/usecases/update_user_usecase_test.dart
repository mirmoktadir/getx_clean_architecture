import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/update_user_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_utils/data/test_data.dart';
import 'create_user_usecase_test.mocks.dart';

void main() {
  late UpdateUserUseCase updateUserUseCase;
  late MockUserRepository mockUserRepository;

  setUp(
    () {
      mockUserRepository = MockUserRepository();
      updateUserUseCase = UpdateUserUseCase(mockUserRepository);
    },
  );

  test(
    'Should call updateUser from user repository',
    () async {
      when(mockUserRepository.updateUser(tUserDummyObject)).thenAnswer(
        (_) async => const Right<String, bool>(true),
      );

      final result = await updateUserUseCase
          .call(const UpdateUserParams(tUserDummyObject));

      expect(result, const Right<String, bool>(true));

      verify(mockUserRepository.updateUser(tUserDummyObject));

      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
