import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: "Gage Guru",
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Nav menu",
          onPressed: null,
        ),
        title: const Text("Gage Guru"),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          ),
        ],
      ),
      body: const Column(
        children: [SearchPanel()],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorLight,
      child: const Column(
        children: [
          SearchPanelText(),
        ],
      ),
    );
  }
}

class SearchPanelText extends StatefulWidget {
  const SearchPanelText({super.key});

  @override
  State<SearchPanelText> createState() => _SearchPanelTextState();
}

class _SearchPanelTextState extends State<SearchPanelText> {
  String _item = "Mouce";

  void _changeSearchItem(ItemCategory? item) {
    if (item == null) return;
    setState(() {
      _item = item.label;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: DropdownMenu<ItemCategory>(
                inputDecorationTheme: const InputDecorationTheme(
                    constraints: BoxConstraints(maxHeight: 35), isDense: true),
                initialSelection: ItemCategory.mouce,
                onSelected: _changeSearchItem,
                width: 128,
                dropdownMenuEntries: ItemCategory.values
                    .map<DropdownMenuEntry<ItemCategory>>((ItemCategory item) {
                  return DropdownMenuEntry<ItemCategory>(
                    value: item,
                    label: item.label,
                    enabled: true,
                  );
                }).toList()),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: Text("の商品検索"))
        ]));
  }
}

enum ItemCategory {
  keyboard("Keyboard"),
  mouce("Mouce"),
  monitor("Monitor"),
  headset("Headset");

  const ItemCategory(this.label);
  final String label;
}
