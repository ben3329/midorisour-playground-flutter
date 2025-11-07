import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';

class UnionPage extends StatefulWidget {
  const UnionPage({super.key});

  @override
  State<UnionPage> createState() => _UnionPageState();
}

class _UnionPageState extends State<UnionPage> {
  final Openapi _client = Openapi();
  late final api;

  @override
  void initState() {
    super.initState();
    _client.dio.options.responseType = ResponseType.json;
    api = _client.getWorkingWithFrontendApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("aaaa")));
  }
}
