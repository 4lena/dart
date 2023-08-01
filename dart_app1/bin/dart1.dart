enum names{ //useful for switch
  Alia,
  Lena,
  Omar,
  Ayoob,
  Aziz,
}
void main(List<String> args) {

  //ex1
  const name = ['Lena', 'Alia']; //cannot change
  //name = 'Alia';
  //name = name.toUpperCase();
  //name.removeAt(0);
  print(name);

  //ex2
  final name2 = ['Lena', 'Alia'];
  name2.removeAt(0);
  print(name2);

  //ex3 Types
  var age;
  age = '34';
  age = 34;
  print(age is int);
  print(age.runtimeType);

  //ex4 convert to another type 
  double age2 = age.toDouble();
  print (age2);

  //ex5
  var firstName = 'Lena';
  var lastName = 'Evola';
  print(firstName + ' ' + lastName);
  print('$firstName $lastName and age is   ${20} was born in ${2023-20}');

  var linesString = '''
    لا تسقني ماء الحياة بذلة
    بل فاسقني بالعز كأس الحنظل
  ''';
  
  print (linesString); 

  if(500<=500)
    print (linesString); 
  
  String message = (500<600) ? 'Lena' : 'Alia';
  print(message);

  names broName = names.Alia;

  }