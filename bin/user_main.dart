import 'repositories/user_repository.dart';

void main() {
  var userRepository = UserRepository();

  userRepository.getData().then((value) {
    print(value.fullname);
  });
}
