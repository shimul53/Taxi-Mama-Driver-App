import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:drivers_app/Models/allUsers.dart';
import 'package:geolocator/geolocator.dart';

String mapKey = "AIzaSyALtrp31ibvr57p_QPRRV4Dv1qV-MxU5QM";

User? firebaseUser;

Users? userCurrentInfo;
User? currentFirebaseUser;
StreamSubscription<Position>? homeTabPageStreamSubscription;

final assetsAudioPlayer = AssetsAudioPlayer();
