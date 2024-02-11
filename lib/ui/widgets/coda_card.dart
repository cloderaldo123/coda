import 'package:coda/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class CodaCard extends StatelessWidget {
  const CodaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 500,
      child: Card(
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CODA",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Career Opportunity Development Assesment",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              verticalSpaceSmall,
              const Text(
                  '''Ang Lorem Ipsum ay ginagamit na modelo ng industriya ng pagpriprint at pagtytypeset. Ang Lorem Ipsum ang naging regular na modelo simula pa noong 1500s, noong may isang di kilalang manlilimbag and kumuha ng galley ng type at ginulo ang pagkaka-ayos nito upang makagawa ng libro ng mga type specimen. Nalagpasan nito hindi lang limang siglo, kundi nalagpasan din nito ang paglaganap ng electronic typesetting at nanatiling parehas. Sumikat ito noong 1960s kasabay ng pag labas ng Letraset sheets na mayroong mga talata ng Lorem Ipsum, at kamakailan lang sa mga desktop publishing software tulad ng Aldus Pagemaker ginamit ang mga bersyon ng Lorem Ipsum.'''),
              verticalSpaceMedium,
              ElevatedButton(
                  onPressed: () {}, child: const Text("Get Involved"))
            ],
          ),
        ),
      ),
    );
  }
}
