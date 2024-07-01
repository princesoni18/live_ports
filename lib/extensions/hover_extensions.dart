import 'package:flutter/material.dart';
import 'package:real_time_ports/extensions/changecolor.dart';
import 'dart:html' as html;

import 'package:real_time_ports/extensions/move_on_hover.dart';

extension HoverExtensions on Widget {
  // Get a regerence to the body of the view
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        appContainer!.style.cursor = 'pointer';
       
      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer!.style.cursor = 'default';
      },
    );
  }
   Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }

  Widget get changeColorHover{

    return ChangeColorHover(child:this);
  }
}