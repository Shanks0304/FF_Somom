import '/component/bootm_navigation_bar/bootm_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BootmNavigationBar component.
  late BootmNavigationBarModel bootmNavigationBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bootmNavigationBarModel =
        createModel(context, () => BootmNavigationBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bootmNavigationBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
