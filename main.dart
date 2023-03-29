Skip to content
Search or jump to…
Pull requests
Issues
Codespaces
Marketplace
Explore
 
@eyonamaal 
flutter
/
samples
Public
Fork your own copy of flutter/samples
Code
Issues
68
Pull requests
3
Actions
Security
Insights
samples/jsonexample/lib/main.dart
@miquelbeltran
miquelbeltran enable Material 3 on jsonexample (#1620)
Latest commit a91b434 on Feb 2
 History
 4 contributors
@miquelbeltran@domesticmouse@RedBrogdon@abhijeethp
90 lines (81 sloc)  2.32 KB

// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jsonexample/tab_pages.dart';
import 'package:window_size/window_size.dart';

void main() {
  setupWindow();
  runApp(const MyApp());
}

const double windowWidth = 1200;
const double windowHeight = 800;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('JSON Sample');
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Let\'s parse some JSON'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Basics'),
              Tab(text: 'Conv. Simple'),
              Tab(text: 'Conv. Complex'),
              Tab(text: 'Conv. List'),
              Tab(text: 'Ser. Simple'),
              Tab(text: 'Ser. Complex'),
              Tab(text: 'Ser. List'),
              Tab(text: 'Built Simple'),
              Tab(text: 'Built Complex'),
              Tab(text: 'Built List'),
            ],
          ),
        ),
        body: const SafeArea(
          bottom: false,
          child: TabBarView(
            children: [
              BasicsPage(),
              ConvertedSimplePage(),
              ConvertedComplexPage(),
              ConvertedListPage(),
              SerializableSimplePage(),
              SerializableComplexPage(),
              SerializableListPage(),
              BuiltSimplePage(),
              BuiltComplexPage(),
              BuiltListPage(),
            ],
          ),
        ),
      ),
    );
  }
}
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
samples/main.dart at main · flutter/samples
