import 'package:flutter/material.dart';
import 'package:midorisour_playground_flutter/working_with_frontend/widgets/header.dart';
import 'package:midorisour_playground_flutter/working_with_frontend/widgets/response_card.dart';
import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';

class CommonUnionPage extends StatefulWidget {
  const CommonUnionPage({super.key});

  @override
  State<CommonUnionPage> createState() => _CommonUnionPageState();
}

class _CommonUnionPageState extends State<CommonUnionPage> {
  final Openapi _client = Openapi();
  late final WorkingWithFrontendApi api;
  final String title = 'Common Response(Flutter)';

  @override
  void initState() {
    super.initState();
    _client.dio.options.responseType = ResponseType.json;
    api = _client.getWorkingWithFrontendApi();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: _pageBackground(theme.brightness),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 960),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageHeader(textTheme: textTheme, title: title),
                  const SizedBox(height: 24),
                  ResponseCard(
                    title: title,
                    playFunction: api
                        .getCommonResponseWorkingWithFrontendUnionCommonResponseGet,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _pageBackground(Brightness brightness) {
    return brightness == Brightness.dark
        ? const Color(0xFF020617)
        : const Color(0xFFF8FAFC);
  }
}
