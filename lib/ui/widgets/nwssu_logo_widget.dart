import 'package:flutter/material.dart';

import '../common/app_strings.dart';

class NwssuLogoWidget extends StatelessWidget {
  const NwssuLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      nwssu_logo_path,
    );
  }
}
