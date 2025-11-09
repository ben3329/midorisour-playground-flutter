import 'package:flutter/material.dart';
import 'package:midorisour_playground_flutter/working_with_frontend/widgets/toolbar_button.dart';
import 'package:dio/dio.dart';

class ResponseCard extends StatefulWidget {
  const ResponseCard({
    super.key,
    required this.title,
    required this.playFunction,
  });

  final String title;
  final Future<Response> Function() playFunction;

  @override
  State<ResponseCard> createState() => _ResponseCardState();
}

class _ResponseCardState extends State<ResponseCard> {
  static const _limeBorder = Color(0xFFD9F99D); // Tailwind lime-200
  static const _limeBorderDark = Color(0xFF365314);
  static const _limeHeader = Color(0xFFF7FEE7); // Tailwind lime-50
  static const _limeHeaderDark = Color(0xFF052E16);
  static const _limeButton = Color(0xFF65A30D); // Tailwind lime-600

  String responseText = '(응답 없음)';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final cardBorderColor = isDark ? _limeBorderDark : _limeBorder;
    final headerColor = isDark ? _limeHeaderDark : _limeHeader;
    final headerTextColor = isDark
        ? const Color(0xFFD9F99D)
        : const Color(0xFF3F6212);

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF020617) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: cardBorderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.4 : 0.05),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              color: headerColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              border: Border(bottom: BorderSide(color: cardBorderColor)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: headerTextColor,
                    ),
                  ),
                ),
                ToolbarIconButton(
                  icon: Icons.play_arrow_rounded,
                  background: _limeButton,
                  iconColor: Colors.white,
                  tooltip: '${widget.title} 실행',
                  onPressed: () async {
                    setState(() {
                      responseText = '로딩 중...';
                    });
                    try {
                      final res = await widget.playFunction();
                      setState(() {
                        responseText = res.data?.toString() ?? 'No data';
                      });
                    } catch (e) {
                      // Try to fetch raw JSON to help diagnose schema mismatches
                      setState(() {
                        responseText = 'Error: $e';
                      });
                    }
                  },
                ),
                const SizedBox(width: 12),
                ToolbarIconButton(
                  icon: Icons.close_rounded,
                  background: isDark ? Colors.transparent : Colors.white,
                  iconColor: headerTextColor,
                  tooltip: '초기화',
                  borderColor: cardBorderColor,
                  onPressed: () {
                    setState(() {
                      responseText = '(응답 없음)';
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(18),
              constraints: const BoxConstraints(minHeight: 160, maxHeight: 420),
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0xFF111827)
                    : const Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Scrollbar(
                thumbVisibility: true,
                radius: const Radius.circular(8),
                child: SingleChildScrollView(
                  child: SelectableText(
                    responseText,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontFamily: 'FiraCode',
                      color: isDark
                          ? Colors.white.withValues(alpha: 0.8)
                          : const Color(0xFF1F2937),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
