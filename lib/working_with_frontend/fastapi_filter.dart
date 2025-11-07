import 'package:flutter/material.dart';

class FastapiFilterPage extends StatefulWidget {
  const FastapiFilterPage({super.key});

  @override
  State<FastapiFilterPage> createState() => _FastapiFilterPageState();
}

class _FastapiFilterPageState extends State<FastapiFilterPage> {
  String _status = 'Loading...';

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    setState(() {
      _status = 'Fetching data from FastAPI...';
    });

    try {
      // Simulate a network call
      await Future.delayed(const Duration(seconds: 2));

      // Here you would normally use your OpenAPI client to fetch data
      // For demonstration, we'll just set a success message
      setState(() {
        _status = 'Data fetched successfully from FastAPI!';
      });
    } catch (e) {
      setState(() {
        _status = 'Error fetching data: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(_status)));
  }
}
