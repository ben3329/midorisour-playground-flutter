import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:midorisour_playground_flutter/working_with_frontend/fastapi_filter.dart';
import 'package:midorisour_playground_flutter/working_with_frontend/union.dart';

final GoRouter onGenerateCustomRoute = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const UnionPage()),
    GoRoute(
      path: '/working_with_frontend',
      builder: (context, state) => const FastapiFilterPage(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(child: Text(state.error.toString() + state.uri.toString())),
  ),
);
