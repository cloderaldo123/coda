import 'package:flutter/material.dart';
import 'dart:html' as html;

class ScrollrouteService {
  final scrollController = ScrollController();

  void listenScroll() {
    scrollController.addListener(() {
      final currentOffset = scrollController.offset;
      // Do something with the scroll offset, e.g., log it, trigger other actions
      print("Current scroll offset: $currentOffset");
    });



  }

  List<GlobalKey> pageGlobalKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];

  void click({required int index}) {
    Scrollable.ensureVisible(
      pageGlobalKeys[index].currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );

    html.window.history.pushState(null, 'home', '$index');

  }
}
