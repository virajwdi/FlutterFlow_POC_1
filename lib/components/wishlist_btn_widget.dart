import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'wishlist_btn_model.dart';
export 'wishlist_btn_model.dart';

class WishlistBtnWidget extends StatefulWidget {
  const WishlistBtnWidget({
    super.key,
    bool? parameter1,
  }) : parameter1 = parameter1 ?? false;

  final bool parameter1;

  @override
  State<WishlistBtnWidget> createState() => _WishlistBtnWidgetState();
}

class _WishlistBtnWidgetState extends State<WishlistBtnWidget> {
  late WishlistBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WishlistBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('WISHLIST_BTN_COMP_Icon_gjb7ewnr_ON_TAP');
        logFirebaseEvent('Icon_update_component_state');
        _model.likeButton12 = !_model.likeButton12;
        setState(() {});
      },
      child: Icon(
        Icons.favorite_outlined,
        color: _model.likeButton12
            ? FlutterFlowTheme.of(context).secondaryText
            : const Color(0xFFEC0C0C),
        size: 24.0,
      ),
    );
  }
}
