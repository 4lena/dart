import 'dart:convert';
import 'dart:io'; 
import 'package:http/http.dart' as http;

void main() {
  // Prompt the user for input
  stdout.write('Enter a country: ');
  String country = stdin.readLineSync() ?? ''; 

  if (country.isNotEmpty) {
    getData(country);
  } else {
    print('Country cannot be empty.');
  }
}

void getData(String country) async {
  final response = await http.get(
    Uri.parse('http://universities.hipolabs.com/search?country=$country'),
  );

  if (response.statusCode == 200) {
    var apiResponse = jsonDecode(response.body);
    for (var item in apiResponse) {
      print('Name: ${item['name']}');
      print('Country: ${item['country']}');
      print('State/Province: ${item['state-province']}');
      print('Alpha Two Code: ${item['alpha_two_code']}');
      print('Domains: ${item['domains']}');
      print('Web Pages: ${item['web_pages']}');
      print('\n');
    }
  } else {
    throw Exception('Failed to load the API');
  }
}