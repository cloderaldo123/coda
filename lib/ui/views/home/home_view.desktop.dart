import 'package:coda/ui/views/about/about_view.dart';
import 'package:coda/ui/views/home/home_index.dart';
import 'package:coda/ui/widgets/nwssu_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          toolbarHeight: 100,
          leadingWidth: 600,
          leading: const NwssuLogoWidget(),
          actions: [
            ...viewModel.pageTitles
                .map((e) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {
                              viewModel.click(
                                  index: viewModel.pageTitles.indexOf(e));
                            },
                            child: Text(
                              e,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )),
                        //if its last value then dont put a vertical line
                      ],
                    ))
                .toList(),
            const SizedBox(
              width: 100,
            )
          ]),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    Colors.white,
                    Colors.green,
                  ],
                      stops: [
                    0.0,
                    1.0
                  ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      tileMode: TileMode.repeated)),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: NotificationListener(
                  onNotification: (t){
                    print(viewModel.scrollController.position.pixels);
                  return true;
                  },
                  child: SingleChildScrollView(
                    controller: viewModel.scrollController,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeIndex(
                          key: viewModel.globalKeys[0],
                        ),
                        AboutView(
                          key: viewModel.globalKeys[1],
                        )
                      ],
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
