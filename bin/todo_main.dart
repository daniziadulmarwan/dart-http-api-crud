import 'package:max_learn/todo_model.dart';
import 'repositories/todo_repositori.dart';

void main() {
  var todoRepository = TodoRepository();

  // NOTE: GET ALL DATA ASYNC AWAIT
  // List<Todo> d = await todoRepository.fetchAll();
  // d.forEach((element) {
  //   print(element.title);
  // });

  // NOTE: GET ALL DATA ASYNCRONUS
  // todoRepository.fetchAll().then((value) {
  //   List<Todo> ms = value;
  //   ms.forEach((element) {
  //     print(element.title);
  //   });
  // });

  // NOTE: GET DATA BY ID
  // todoRepository.getOne('1').then((value) => {
  //       print(value['id']),
  //       print(value['title']),
  //       print(value['body']),
  //     });

  // NOTE: GET BY PK
  todoRepository.getByPk('1').then((value) {
    print(value.title);
  });

  // NOTE: CREATE DATA
  // todoRepository
  //     .create('Makan Malam', 'Bersama teman seperjuangan')
  //     .then((value) {
  //   if (value == true) {
  //     print('Success create data');
  //   }
  // });

  // NOTE: UPDATE DATA
  // todoRepository
  //     .update(title: 'Makan Kambing Guling', body: 'makan kambing gratis', id: '5')
  //     .then((value) {
  //   print('${value ? 'Success update data' : 'Failed update data'}');
  // });

  // // NOTE: UPDATE DATA HTTP
  // todoRepository
  //     .updateTodo('6', 'Nasi Kahbsyah Kambing',
  //         'yg terbuat dari bahan pilihan dan alami')
  //     .then((value) {
  //   if (value.statusCode == 200) {
  //     print('Success update data');
  //   }
  // });

  // NOTE: DELETE DATA
  // todoRepository.destroy('6').then((value) => {
  //   if(value == true) {
  //   print('success delete data')
  //   } else {
  //     print('failed delete data')
  //   }
  //   });
}
