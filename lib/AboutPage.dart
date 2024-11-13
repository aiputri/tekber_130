import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.lightBlue[300], // Warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto diri 
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.png'),
                backgroundColor: Colors.lightBlue[100], // Border foto
              ),
              SizedBox(height: 20),

              // Nama lengkap
              Text(
                'Aliffia Isma Putri',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue[700],
                ),
              ),
              SizedBox(height: 20),

              // NRP
              buildInfoContainer('NRP: 5026221130'),

              // Departemen
              buildInfoContainer('Departemen: Sistem Informasi'),

              // Tahun
              buildInfoContainer('Tahun: 2022'),

              SizedBox(height: 20),

              // Fun Fact
              Card(
                elevation: 4,
                color: Colors.lightBlue[50],
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Fun Fact: Lagi Sakit Gigi',
                    style: TextStyle(fontSize: 16, color: Colors.lightBlue[700]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create consistent info containers
  Widget buildInfoContainer(String text) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        border: Border.all(color: Colors.lightBlue.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.lightBlue[700]),
        ),
      ),
    );
  }
}
