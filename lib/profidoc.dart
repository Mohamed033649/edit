import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctor Profile',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'Name : Mohamed Mohamoud ismail',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.edit),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  'phone : 010682905555',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.edit),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  'specilization : bones',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.edit),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  'city : Cairo',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.edit),
              ],
            ),
            SizedBox(height: 10.0),
               Row(
              children: [
                Text(
                  'age : 28',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.edit),
              ],
            ),


            
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'logout',
          ),
        ],
      ),
    );
  }
}
