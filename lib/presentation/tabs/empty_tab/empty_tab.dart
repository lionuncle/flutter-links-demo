import 'package:flutter/material.dart';

class EmptyTab extends StatefulWidget {
  const EmptyTab({super.key});

  @override
  State<EmptyTab> createState() => _EmptyTabState();
}

class _EmptyTabState extends State<EmptyTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('EmptyTab'));
  }
}
