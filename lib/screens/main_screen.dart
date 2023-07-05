import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunyoubin/widgets/done_screen.dart.dart';
import 'package:sunyoubin/widgets/todo_screen.dart';

class MainScreen extends StatefulWidget {
  final String id;

  const MainScreen({super.key, required this.id});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  MainScreen? extra;

  @override
  void initState() {
    super.initState();

    debugPrint('ID: ${widget.id}');

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.namedLocation('main')),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            text: 'sample',
          ),
          Tab(
            text: 'sample',
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          TodoScreen(),
          DoneScreen(),
        ],
      ),
    );
  }
}
