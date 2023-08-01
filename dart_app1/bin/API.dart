import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  fetchLyrics();
}

void fetchLyrics() async {
  // Take user input for the song name
  print("Enter the artist of a song:");
  String? artist = await getInput();

  print("Enter the name of a song:");
  String? songName = await getInput();

  if (songName != null && artist != null) {
    // Fetch lyrics from Lyrics.ovh API
    String apiUrl = 'https://api.lyrics.ovh/v1/';
    String url = apiUrl + Uri.encodeComponent(artist) + Uri.encodeComponent(songName);
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // Parse and display the lyrics
      var jsonData = json.decode(response.body);
      String lyrics = jsonData['lyrics'];
      print("\nLyrics:\n$lyrics");
    } else {
      print('Failed to fetch lyrics. Please try again.');
    }
  } else {
    print('Invalid song name.');
  }
}

Future<String?> getInput() async {
  String? input = await stdin.readLineSync();
  return input;
}