import '/component/bottom_sheet/bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'bootm_navigation_bar_model.dart';
export 'bootm_navigation_bar_model.dart';

class BootmNavigationBarWidget extends StatefulWidget {
  const BootmNavigationBarWidget({super.key});

  @override
  State<BootmNavigationBarWidget> createState() =>
      _BootmNavigationBarWidgetState();
}

class _BootmNavigationBarWidgetState extends State<BootmNavigationBarWidget> {
  late BootmNavigationBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BootmNavigationBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: ToggleIcon(
              onPressed: () async {
                setState(
                  () => FFAppState().navigationState[0]
                      ? FFAppState().navigationState[0]
                      : FFAppState().navigationState[0],
                );
                setState(() {
                  FFAppState().updateNavigationStateAtIndex(
                    0,
                    (_) => true,
                  );
                });
              },
              value: FFAppState().navigationState[0],
              onIcon: const Icon(
                Icons.home_outlined,
                color: Color(0xFF18BF74),
                size: 30.0,
              ),
              offIcon: Icon(
                Icons.home_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: ToggleIcon(
              onPressed: () async {
                setState(
                  () => FFAppState().navigationState[1]
                      ? FFAppState().navigationState[1]
                      : FFAppState().navigationState[1],
                );
                setState(() {
                  FFAppState().navigationState = [];
                });
                setState(() {
                  FFAppState().updateNavigationStateAtIndex(
                    1,
                    (_) => true,
                  );
                });
              },
              value: FFAppState().navigationState[1],
              onIcon: const Icon(
                Icons.mail_outline,
                color: Color(0xFF18BF74),
                size: 30.0,
              ),
              offIcon: Icon(
                Icons.mail_outline,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: ToggleIcon(
              onPressed: () async {
                setState(
                  () => FFAppState().navigationState[2]
                      ? FFAppState().navigationState[2]
                      : FFAppState().navigationState[2],
                );
                setState(() {
                  FFAppState().navigationState = [];
                });
                setState(() {
                  FFAppState().updateNavigationStateAtIndex(
                    2,
                    (_) => true,
                  );
                });
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: const BottomSheetWidget(),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              value: FFAppState().navigationState[2],
              onIcon: const Icon(
                Icons.add_outlined,
                color: Color(0xFF18BF74),
                size: 40.0,
              ),
              offIcon: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 40.0,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: ToggleIcon(
                onPressed: () async {
                  setState(
                    () => FFAppState().navigationState[3]
                        ? FFAppState().navigationState[3]
                        : FFAppState().navigationState[3],
                  );
                  setState(() {
                    FFAppState().navigationState = [];
                  });
                  setState(() {
                    FFAppState().updateNavigationStateAtIndex(
                      3,
                      (_) => true,
                    );
                  });
                },
                value: FFAppState().navigationState[3],
                onIcon: const FaIcon(
                  FontAwesomeIcons.clipboard,
                  color: Color(0xFF18BF74),
                  size: 25.0,
                ),
                offIcon: FaIcon(
                  FontAwesomeIcons.clipboard,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 25.0,
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                FFAppState().navigationState = [];
              });
              setState(() {
                FFAppState().updateNavigationStateAtIndex(
                  4,
                  (_) => true,
                );
              });
            },
            child: badges.Badge(
              badgeContent: Text(
                '1',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              showBadge: true,
              shape: badges.BadgeShape.circle,
              badgeColor: const Color(0xFFFE60AD),
              elevation: 2.0,
              padding: const EdgeInsets.all(6.0),
              position: badges.BadgePosition.topEnd(),
              animationType: badges.BadgeAnimationType.scale,
              toAnimate: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: ToggleIcon(
                  onPressed: () async {
                    setState(
                      () => FFAppState().navigationState[4]
                          ? FFAppState().navigationState[4]
                          : FFAppState().navigationState[4],
                    );
                  },
                  value: FFAppState().navigationState[4],
                  onIcon: const Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xFF18BF74),
                    size: 30.0,
                  ),
                  offIcon: Icon(
                    Icons.account_circle_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
