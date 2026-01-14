import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/navigation/route_paths.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      context.go(RoutePaths.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const _BackgroundHeader(),
            SafeArea(
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  // Logo Area
                  Center(
                    child: Image.asset(
                      'assets/images/splash-icon.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Spacer(flex: 2),
                  // Title
                  const Text(
                    "Alvin's Club",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Serif', // Fallback to Serif
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Subtitles
                  const Text(
                    "YOUR AI SHOPPING EXPERT",
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "YOUR WORLD, YOUR WAY, FOR LESS",
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.0,
                      color: Colors.black54,
                    ),
                  ),
                  const Spacer(flex: 2),
                  // Features List
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: [
                        _buildFeatureItem(
                          icon: Icons.star_outline_rounded,
                          text: "Personalized",
                        ),
                        const SizedBox(height: 16),
                        _buildFeatureItem(
                          icon: Icons.favorite_border_rounded,
                          text: "Curated",
                        ),
                        const SizedBox(height: 16),
                        _buildFeatureItem(
                          icon: Icons.diamond_outlined,
                          text: "Premium Alternatives",
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem({required IconData icon, required String text}) {
    const salmonColor = Color(0xFFEF8972);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: salmonColor, width: 1),
          ),
          child: Icon(icon, color: salmonColor, size: 24),
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: const TextStyle(
            color: salmonColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _BackgroundHeader extends StatelessWidget {
  const _BackgroundHeader();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _HeaderClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        color: const Color(0xFFEF8972),
      ),
    );
  }
}

class _HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 60);
    // Create a curve that goes up in the middle
    path.quadraticBezierTo(
      size.width / 2,
      size.height - 120, // Control point (higher than endpoints)
      size.width,
      size.height - 60, // End point
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
