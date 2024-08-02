import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? customChartCodeOne(List<dynamic>? json) {
  // return the category from the json
// return category from the json
  return json?.map((data) => data['category'] as String)?.toList();
}

List<int>? customCodeCharttwo(List<dynamic>? json) {
  // return amount from the json
// return the amount from the json
  return json?.map((data) => data['amount'] as int)?.toList();
}
