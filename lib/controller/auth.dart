import 'package:http/http.dart' as http;
import 'dart:convert';

Future<bool> login(String email, String password) async {
  var url = Uri.parse('https://intellimeter.tech/controllers/login.php');
  var response = await http.post(url, body: {
    'email_address': email,
    'password': password
  });

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    if (data['status'] == 'success') {
      // Log the successful login attempt
      print('Login Successful');
      print('Logged in as type: ${data['session']}');
      return true; // Explicitly return true
    } else {
      // Log the failed login attempt
      print('Login Failed: ${data['message']}');
    }
  } else {
    print('Error: ${response.statusCode}');
  }
  return false; // Ensure a boolean is always returned
}
