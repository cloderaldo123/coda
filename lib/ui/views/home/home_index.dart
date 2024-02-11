import 'package:coda/ui/widgets/video_card.dart';
import 'package:flutter/material.dart';

import '../../common/app_constants.dart';
import '../../widgets/coda_card.dart';

class HomeIndex extends StatelessWidget {
  const HomeIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: kdDesktopMaxContentHeight,
      width: kdDesktopMaxContentWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [CodaCard(), VedioCard()],
      ),
    );
  }
}
