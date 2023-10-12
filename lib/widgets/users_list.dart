import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pr9/models/User.dart';
import 'package:pr9/screens/UserDetailScreen.dart';

import '../models/User.dart';
import '../screens/UserDetailScreen.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

List<User> usersList = [
  User(
      age: 19,
      firstName: 'Копатыч',
      lastName: 'Грей',
      phone: '23454353415',
      email: 'MR.GRAY.3000@mail.ru',
      avatar: 
      'https://www.vokrug.tv/pic/person/d/f/2/b/df2b37669ac865c182669c62c7ced9d9.jpeg'),

      User(
      age: 18,
      firstName: 'Анастейша',
      lastName: 'Сузуки',
      phone: '15109514981',
      email: 'pupurniybrauss228@mail.ru',
      avatar: ''),

      User(
      age: 18,
      firstName: 'Захарунчи',
      lastName: 'Ереван',
      phone: '4216741213',
      email: 'pichupido.tshsu.piupirapinashpipilas@mail.ru',
      avatar: 
      'https://memepedia.ru/wp-content/uploads/2021/09/pichupido-mem.jpg'),
];

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
  return ListView.builder(itemCount:usersList.length, itemBuilder: (context, index) {
    return GestureDetector(
     onTap: () {
     Navigator.push(
      context,
      MaterialPageRoute(
        builder:(context) =>  UserDetailScreen(
          user: usersList[index],
        ),
      ),
     );
     }, 
      child: Card(
        child: Column(
          children: [
            Row( 
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100.0, 
                  width: 100.0, 
                  child: usersList[index].avatar == ''
                  ? Image.network(
                'https://www.aelita.ua/wp-content/uploads/2022/12/photo_2022-11-30_13-10-17-1140x843.jpg')
                : Image.network(usersList[index].avatar,
                fit: BoxFit.cover),
        ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Имя: ' + usersList[index].firstName,
                              textAlign: TextAlign.left,
                          ),
                          Text('Фамилия: ' + usersList[index].lastName),
                          Text('Возраст: ' + usersList[index].age.toString()),
                          Text('Телефон: ' + usersList[index].phone),
                          Container(width: 200, child: Text('Эл. Адрес: ' + usersList[index].email, maxLines: 3)),
                        ],
                      ),
                            ),

              ],
            ),
        ],
        ), 
      ),
    );
  });  
  }
}