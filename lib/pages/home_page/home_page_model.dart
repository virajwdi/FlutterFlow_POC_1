import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a full name';
    }

    if (val.length < 3) {
      return 'Enter a valid Full Name';
    }
    if (val.length > 50) {
      return 'Fields maximum length exceed';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a email';
    }

    if (val.length < 5) {
      return 'Enter valid email id';
    }
    if (val.length > 50) {
      return 'Maximum field valaue exceeded';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a password';
    }

    if (val.length < 5) {
      return 'Password must be atleast 5 characters long';
    }
    if (val.length > 50) {
      return 'Fields maximum length exceed';
    }
    if (!RegExp('^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{5,}\$').hasMatch(val)) {
      return ' Password must contain at least one letter and one number';
    }
    return null;
  }

  // State field(s) for gender widget.
  FormFieldController<String>? genderValueController;
  // State field(s) for language widget.
  FormFieldController<List<String>>? languageValueController;
  List<String>? get languageValues => languageValueController?.value;
  set languageValues(List<String>? v) => languageValueController?.value = v;

  // State field(s) for accountType widget.
  String? accountTypeValue;
  FormFieldController<String>? accountTypeValueController;
  // State field(s) for termsandConditions widget.
  bool? termsandConditionsValue;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }

  /// Additional helper methods.
  String? get genderValue => genderValueController?.value;
}
