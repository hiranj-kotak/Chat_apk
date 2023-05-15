//packages
import 'package:flutter/material.dart';
//screens
//widgets
//providers
import './user.dart';

class Person with ChangeNotifier {
  List<User> persons = [
    User(
      email: 'esat.hamzaoğlu@example.com',
      gender: 'male',
      phoneNumber: '(215)-408-5458',
      birthDate: 628284647,
      username: 'heavygorilla341',
      password: 'sable',
      firstName: 'esat',
      lastName: 'hamzaoğlu',
      title: 'mr',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/men/9.jpg',
      isonline: true,
    ),
    User(
      email: 'druso.nascimento@example.com',
      gender: 'male',
      phoneNumber: '(05) 2501-9070',
      birthDate: 845185612,
      username: 'whitefish483',
      password: 'goldstar',
      firstName: 'druso',
      lastName: 'nascimento',
      title: 'mr',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/men/18.jpg',
      isonline: false,
    ),
    User(
      email: 'nonato.pires@example.com',
      gender: 'male',
      phoneNumber: '(62) 3725-1840',
      birthDate: 488254407,
      username: 'redrabbit322',
      password: 'phish',
      firstName: 'nonato',
      lastName: 'pires',
      title: 'mr',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/men/91.jpg',
      isonline: true,
    ),
    User(
      email: 'todd.beck@example.com',
      gender: 'male',
      phoneNumber: '0768-374-878',
      birthDate: 216450355,
      username: 'bigelephant503',
      password: 'rrrrr',
      firstName: 'todd',
      lastName: 'beck',
      title: 'mr',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/men/65.jpg',
      isonline: false,
    ),
    User(
      email: 'debbie.may@example.com',
      gender: 'female',
      phoneNumber: '081-579-9760',
      birthDate: 1312176369,
      username: 'whiteostrich342',
      password: 'payton',
      firstName: 'debbie',
      lastName: 'may',
      title: 'ms',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/women/15.jpg',
      isonline: true,
    ),
    User(
      email: 'solène.lemaire@example.com',
      gender: 'female',
      phoneNumber: '06-41-57-50-80',
      birthDate: 756942823,
      username: 'heavyladybug601',
      password: 'harold',
      firstName: 'solène',
      lastName: 'lemaire',
      title: 'mrs',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/women/76.jpg',
      isonline: false,
    ),
    User(
      email: 'sammy.gregory@example.com',
      gender: 'male',
      phoneNumber: '081-513-7721',
      birthDate: 461809657,
      username: 'tinysnake876',
      password: 'carter',
      firstName: 'sammy',
      lastName: 'gregory',
      title: 'mr',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/men/48.jpg',
      isonline: true,
    ),
    User(
      email: 'melissa.fleming@example.com ',
      gender: 'female',
      phoneNumber: '0740-304-475',
      birthDate: 469521368,
      username: 'goldenkoala410',
      password: 'sick',
      firstName: 'melissa',
      lastName: 'fleming',
      title: 'miss',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/algolia/women/pragati.png',
      isonline: false,
    ),
    User(
      email: 'justin.harcourt@example.com',
      gender: 'male',
      phoneNumber: '645-852-4078',
      birthDate: 1364921405,
      username: 'beautifulbutterfly981',
      password: 'summit',
      firstName: 'justin',
      lastName: 'harcourt',
      title: 'mr',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/men/26.jpg',
      isonline: false,
    ),
    User(
      email: 'selma.andersen@example.com',
      gender: 'female',
      phoneNumber: '25728984',
      birthDate: 1123567,
      username: 'bluedog190',
      password: 'lkjhgfds',
      firstName: 'selma',
      lastName: 'andersen',
      title: 'miss',
      picture:
          'https://raw.githubusercontent.com/pixelastic/fakeusers/master/pictures/women/18.jpg',
      isonline: true,
    )
  ];

  User get(String image) {
    return persons.firstWhere((element) => element.picture == image);
  }
}
