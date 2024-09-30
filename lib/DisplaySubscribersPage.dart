import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DisplaySubscribersPage extends StatefulWidget {
  @override
  _DisplaySubscribersPageState createState() => _DisplaySubscribersPageState();
}

class _DisplaySubscribersPageState extends State<DisplaySubscribersPage> {
  List subscribers = [];

  // Function to fetch subscribers data from PHP script
  Future<void> fetchSubscribers() async {
    final url = 'http://khaleeltechhub.com.ng/fetch_subscribers.php'; // Replace with your actual URL
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        setState(() {
          subscribers = json.decode(response.body);
        });
      } else {
        print('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchSubscribers(); // Fetch subscribers when the page loads
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribers'),
      ),
      body: subscribers.isEmpty
          ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching
          : ListView.builder(
              itemCount: subscribers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(subscribers[index]['sEmail'] ?? 'No Email'),
                  subtitle: Text(subscribers[index]['sPhone'] ?? 'No Phone'),
                );
              },
            ),
    );
  }
}
