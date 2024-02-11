import 'package:coda/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class VedioCard extends StatefulWidget {
  const VedioCard({super.key});

  @override
  State<VedioCard> createState() => _VedioCardState();
}

class _VedioCardState extends State<VedioCard> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose the best course for you",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            verticalSpaceMedium,
            const SizedBox(
              width: 500,
              height: 300,
              child: HtmlElementView(viewType: 'hello-world-html'),
            ),
          ],
        ),
      ),
    );
  }
}
