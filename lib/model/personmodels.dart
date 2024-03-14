class PersonModel {
  String name;
  int age;
  String gender;
  String? occupation;
  String city;
  String martial_status;
  PersonModel(
      {required this.age,
      required this.name,
      required this.city,
      required this.gender,
      required this.martial_status,
      this.occupation});
}
