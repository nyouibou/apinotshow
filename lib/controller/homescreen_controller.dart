import 'package:apinotshow/model/personmodels.dart';
import 'package:flutter/material.dart';

class HomescreenController with ChangeNotifier {
  List<PersonModel> personModelList = [];
  List<Map<String, dynamic>> persons = [
    {
      'name': 'John Doe',
      'age': 30,
      'gender': 'male',
      'occupation': 'Software Engineer',
      'city': 'New York',
      'marital_status': 'Single',
    },
    {
      'name': 'Alice Smith',
      'age': 28,
      'gender': 'female',
      'occupation': 'Doctor',
      'city': 'Los Angeles',
      'marital_status': 'Married',
    },
    {
      'name': 'Michael Johnson',
      'age': 35,
      'gender': 'male',
      'occupation': 'Teacher',
      'city': 'Chicago',
      'marital_status': 'Married',
    },
    {
      'name': 'Emily Brown',
      'age': 25,
      'gender': 'female',
      'occupation': 'Engineer',
      'city': 'Houston',
      'marital_status': 'Single',
    },
    {
      'name': 'Robert Wilson',
      'age': 40,
      'gender': 'male',
      'occupation': 'Lawyer',
      'city': 'San Francisco',
      'marital_status': 'Divorced',
    },
    {
      'name': 'Sophia Martinez',
      'age': 33,
      'gender': 'female',
      'occupation': 'Artist',
      'city': 'Miami',
      'marital_status': 'Single',
    },
    {
      'name': 'David Taylor',
      'age': 45,
      'gender': 'male',
      'occupation': 'CEO',
      'city': 'Seattle',
      'marital_status': 'Married',
    },
    {
      'name': 'Olivia Brown',
      'age': 29,
      'gender': 'female',
      'occupation': 'Marketing Manager',
      'city': 'Boston',
      'marital_status': 'Single',
    },
  ];
  generateModel() {
    personModelList = persons
        .map((e) => PersonModel(
              age: e["age"],
              name: e["name"],
              gender: e["gender"],
              occupation: e["occupation"],
              city: e["city"],
              martial_status: e["marital_status"],
            ))
        .toList();
  }
}
