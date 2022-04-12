import 'repositories/user_repository.dart';

void main() {
  var userRepository = UserRepository();

  // userRepository.getData().then((value) {
  //   print(value.fullname);
  // });

  userRepository.fetchAll().then((value) {
    value.forEach((element) {
      print(element.fullname);
    });
  });
}
