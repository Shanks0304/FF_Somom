import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_model.dart';
export 'bottom_sheet_model.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  late BottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetModel());
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
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: const Color(0x9A57636C),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              MediaQuery.sizeOf(context).width * 0.1,
              0.0,
            ),
            20.0,
            valueOrDefault<double>(
              MediaQuery.sizeOf(context).width * 0.1,
              0.0,
            ),
            20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xFF4A5698),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width * 0.1,
                      0.0,
                    ),
                    0.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width * 0.1,
                      0.0,
                    ),
                    0.0),
                child: Stack(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/camera.png',
                        width: 25.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Camera',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Almarai',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xFF19B4FD),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Stack(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Photos',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Almarai',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width * 0.1,
                          0.0,
                        ),
                        0.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width * 0.1,
                          0.0,
                        ),
                        0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/photos.png',
                        width: 25.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Stack(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Import Files',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Almarai',
                            color: const Color(0xFF535C99),
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width * 0.1,
                          0.0,
                        ),
                        0.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width * 0.1,
                          0.0,
                        ),
                        0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/file.png',
                        width: 20.0,
                        height: 25.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0xFFBBBFD2),
              icon: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 18.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ].divide(const SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
