// Copyright 2019-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.flash_on), text: 'Performance'),
                Tab(icon: Icon(Icons.sync), text: 'Infinite Process'),
                Tab(icon: Icon(Icons.storage), text: 'Data Transfer'),
              ],
            ),
            title: Text('Isolate Example'),
          ),
          body: TabBarView(
            children: [
              PerformancePage(),
              InfiniteProcessPage(),
              DataTransferPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class PerformancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Welcome to the Performance Page'),
    );
  }
}

class InfiniteProcessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Welcome to the Infinite Process Page'),
    );
  }
}

class DataTransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Welcome to the Data Transfer Page'),
    );
  }
}
