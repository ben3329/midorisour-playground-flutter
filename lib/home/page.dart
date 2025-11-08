import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final Uri _blogUri = Uri.parse('https://www.midorisour.kro.kr');

  Future<void> _launchBlog(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final launched = await launchUrl(
      _blogUri,
      mode: LaunchMode.platformDefault,
      webOnlyWindowName: '_blank',
    );

    if (!launched) {
      messenger.showSnackBar(
        const SnackBar(
          content: Text(
            "Couldn't open the blog. Please try again in a moment.",
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorScheme.primaryContainer.withValues(alpha: 0.6),
              colorScheme.surface,
              colorScheme.tertiaryContainer.withValues(alpha: 0.7),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -80,
              top: -40,
              child: _BlurredCircle(
                diameter: 240,
                color: colorScheme.primary.withValues(alpha: 0.2),
              ),
            ),
            Positioned(
              left: -60,
              bottom: 100,
              child: _BlurredCircle(
                diameter: 180,
                color: colorScheme.secondary.withValues(alpha: 0.18),
              ),
            ),
            SafeArea(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 760),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final isCompactCard = constraints.maxWidth < 1080;
                        final double cardWidth = isCompactCard
                            ? constraints.maxWidth
                            : constraints.maxWidth * 0.58;

                        return Align(
                          alignment: isCompactCard
                              ? Alignment.center
                              : Alignment.centerLeft,
                          child: SizedBox(
                            width: cardWidth,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(32),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 30,
                                  sigmaY: 30,
                                ),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    color: colorScheme.surface.withValues(
                                      alpha: 0.88,
                                    ),
                                    border: Border.all(
                                      color: Colors.white.withValues(
                                        alpha: 0.4,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: colorScheme.shadow.withValues(
                                          alpha: 0.1,
                                        ),
                                        blurRadius: 40,
                                        offset: const Offset(0, 25),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      32,
                                      36,
                                      32,
                                      36,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        LayoutBuilder(
                                          builder: (context, constraints) {
                                            final isCompact =
                                                constraints.maxWidth < 1080;
                                            double sectionWidth(
                                              double factor,
                                            ) => isCompact
                                                ? constraints.maxWidth
                                                : constraints.maxWidth * factor;

                                            return Wrap(
                                              spacing: 32,
                                              runSpacing: 24,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: sectionWidth(0.58),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Welcome to the Midorisour Playground",
                                                        style: textTheme
                                                            .displaySmall
                                                            ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: colorScheme
                                                                  .onSurface,
                                                              fontSize: 32,
                                                            ),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      Text(
                                                        'This is a space to push Flutter test for my blog posts.\n'
                                                        'If you want to read, please visit the blog below!',
                                                        style: textTheme
                                                            .titleMedium
                                                            ?.copyWith(
                                                              color: colorScheme
                                                                  .onSurfaceVariant,
                                                              height: 1.5,
                                                            ),
                                                      ),
                                                      const SizedBox(
                                                        height: 24,
                                                      ),
                                                      FilledButton.icon(
                                                        onPressed: () =>
                                                            _launchBlog(
                                                              context,
                                                            ),
                                                        icon: const Icon(
                                                          Icons
                                                              .open_in_new_rounded,
                                                        ),
                                                        label: const Text(
                                                          'Visit blog',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                        const SizedBox(height: 32),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BlurredCircle extends StatelessWidget {
  const _BlurredCircle({required this.diameter, required this.color});

  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.6),
            blurRadius: diameter / 2,
            spreadRadius: diameter / 4,
          ),
        ],
      ),
    );
  }
}
