import '/flutter_flow/flutter_flow_util.dart';
import 'product_listing_page_widget.dart' show ProductListingPageWidget;
import 'package:flutter/material.dart';

class ProductListingPageModel
    extends FlutterFlowModel<ProductListingPageWidget> {
  ///  Local state fields for this page.

  bool likeButton = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
