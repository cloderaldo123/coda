import 'package:coda/ui/common/app_constants.dart';
import 'package:coda/ui/common/app_strings.dart';
import 'package:coda/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'about_viewmodel.dart';

class AboutView extends StackedView<AboutViewModel> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AboutViewModel viewModel,
    Widget? child,
  ) {
    return SizedBox(
        height: kdDesktopMaxContentHeight,
        width: kdDesktopMaxContentWidth,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Welcome to Northwest Samar State University!",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 400,
                    width: 800,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/nwssu_gate.jpeg',
                                        width: 350,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      horizontalSpaceMedium,
                                      const Expanded(
                                        child: Text(
                                          lorem,
                                          maxLines: 5,
                                        ),
                                      )
                                    ],
                                  ),
                                  verticalSpaceSmall,
                                  const Text(lorem),
                                ],
                              ),
                            ),
                            verticalSpaceMedium,
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Read more'))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kcPrimaryColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "Research Team Information",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.arrow_back_ios),
                                  CircleAvatar(),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            ),
                            const Text(ksHomeBottomSheetDescription),
                            verticalSpaceMedium,
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Read more'))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  @override
  AboutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AboutViewModel();
}
