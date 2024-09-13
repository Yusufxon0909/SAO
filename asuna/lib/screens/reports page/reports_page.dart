// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(ReportsScreen());
}

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(backgroundColor: Colors.grey[900]),
      ),
      home: ReportsScreen(),
    );
  }
}

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  bool _showButtons = true;
  String _selectedMonth = 'September';
  final List<String> _months = [
    'July',
    'August',
    'September',
    'October 2022',
    'November 2022',
    'December 2022'
  ];
  final bool _hasOperations = false;
  String _selectedTab = 'Report on Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        title: Text('Reports', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(_showButtons ? Icons.access_time : Icons.close,
                color: Colors.blue),
            onPressed: () {
              setState(() {
                _showButtons = !_showButtons;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          if (_showButtons) _buildSegmentedButtons(),
          _buildMonthSelector(),
          Expanded(
            child: _hasOperations
                ? Center(
                    child: Text('Operations will be displayed here',
                        style: TextStyle(color: Colors.white)))
                : Center(
                    child: Text(
                      'There are not operations\nfor this period',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: _openFilterDrawer,
        child: Icon(Icons.tune),
      ),
    );
  }

  Widget _buildSegmentedButtons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(

          children: [
            Expanded(
              child: _buildSegmentButton('Report on Click'),
            ),
            Expanded(
              child: _buildSegmentButton('Monitoring'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegmentButton(String title) {
    bool isSelected = _selectedTab == title;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = title;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildMonthSelector() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _months.length,
        itemBuilder: (context, index) {
          bool isSelected = _selectedMonth == _months[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedMonth = _months[index];
                      // Here you would typically fetch operations for the selected month
                      // and update _hasOperations accordingly
                    });
                  },
                  child: Text(
                    _months[index],
                    style: TextStyle(
                      color: isSelected ? Colors.blue : Colors.grey,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _openFilterDrawer() {
    Drawer(
      child: Column(
        children: [
          ListTile(
            title: Text('Filter', style: TextStyle(color: Colors.white)),
            trailing: TextButton(
              child: Text('Close', style: TextStyle(color: Colors.blue)),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text('By card', style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.add, color: Colors.blue),
          ),
          ListTile(
            title: Text('By date', style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.add, color: Colors.blue),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () => Navigator.pop(context),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
