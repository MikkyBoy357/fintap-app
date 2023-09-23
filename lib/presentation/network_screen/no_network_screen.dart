import 'package:flutter/material.dart';

class NoNetworkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.signal_wifi_off,
              size: 80,
              color: Colors.red.withOpacity(0.3),
            ),
            const SizedBox(height: 16),
            const Text(
              'No Network connectivity',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Text(
              'Could not connect to the internet.\nPlease check your connection and try again.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 16),
            // RaisedButton(
            //   onPressed: () {
            //     // Handle retry or navigate to network settings
            //   },
            //   child: Text('Retry'),
            // ),
          ],
        ),
      ),
    );
  }
}