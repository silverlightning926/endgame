import 'package:endgame/src/constants/color_constants.dart';
import 'package:endgame/src/providers/home_screen_data_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class LoadingScreen extends ConsumerStatefulWidget {
  const LoadingScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends ConsumerState<LoadingScreen> {
  Future<void> _initializeData() async {
    await ref.read(loadHomeScreenDataProvider.future);
  }

  @override
  void initState() {
    _initializeData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.go('/');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: ColorConstants.navigationGradient,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ENDGAME",
            textAlign: TextAlign.center,
            style: GoogleFonts.majorMonoDisplay(
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 75,
          ),
          const SpinKitFadingCube(
            color: ColorConstants.primaryNavigationColor,
            size: 75,
          ),
          const SizedBox(
            height: 75,
          ),
          Text(
            "Loading...",
            textAlign: TextAlign.center,
            style: GoogleFonts.majorMonoDisplay(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
