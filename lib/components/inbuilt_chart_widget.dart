import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'inbuilt_chart_model.dart';
export 'inbuilt_chart_model.dart';

class InbuiltChartWidget extends StatefulWidget {
  const InbuiltChartWidget({super.key});

  @override
  State<InbuiltChartWidget> createState() => _InbuiltChartWidgetState();
}

class _InbuiltChartWidgetState extends State<InbuiltChartWidget> {
  late InbuiltChartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InbuiltChartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 300.0,
      child: Stack(
        children: [
          FlutterFlowPieChart(
            data: FFPieChartData(
              values: [FFAppState().Maggie, FFAppState().Milk],
              colors: [const Color(0x9F4B39EF), const Color(0xFF6F28CB)],
              radius: [60.0, 60.0],
              borderColor: [const Color(0x00000000), const Color(0x00000000)],
            ),
            donutHoleRadius: 35.0,
            donutHoleColor: Colors.transparent,
            sectionLabelType: PieChartSectionLabelType.percent,
            sectionLabelStyle:
                FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, 1.0),
            child: FlutterFlowChartLegendWidget(
              entries: const [
                LegendEntry(Color(0x9F4B39EF), 'Maggie'),
                LegendEntry(Color(0xFF6F28CB), 'Milk'),
              ],
              width: 75.0,
              height: 77.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              textPadding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              borderWidth: 1.0,
              borderColor: Colors.black,
              indicatorSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
