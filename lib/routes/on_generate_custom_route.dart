import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter onGenerateCustomRoute = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        final location = state.uri.toString();
        return Scaffold(
          body: Row(
            children: [
              /// 왼쪽 메뉴 (상시 고정)
              _SideMenu(location: location),

              /// 오른쪽 컨텐츠 영역
              Expanded(child: child),
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: '/working_with_frontend/union',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/working_with_frontend/fastapi_filter',
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
);

class _SideMenu extends StatelessWidget {
  final String location;
  const _SideMenu({required this.location});

  bool _isActive(String path) => location.startsWith(path);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: Colors.grey[100],
      child: ListView(
        children: [
          // 상위 메뉴 1
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            selected: _isActive('/home'),
            onTap: () => context.go('/home'),
          ),
          // ✅ 하위 메뉴 (Home 선택 시만 표시)
          if (_isActive('/home')) ...[
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Overview'),
                    selected: location == '/home/overview',
                    onTap: () => context.go('/home/overview'),
                  ),
                  ListTile(
                    title: const Text('Stats'),
                    selected: location == '/home/stats',
                    onTap: () => context.go('/home/stats'),
                  ),
                ],
              ),
            ),
          ],

          // 상위 메뉴 2
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            selected: _isActive('/settings'),
            onTap: () => context.go('/settings'),
          ),
        ],
      ),
    );
  }
}
