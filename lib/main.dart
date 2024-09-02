import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "M PLUS 1p", "M PLUS 2");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'GageGuru',
      theme: theme.light(),
      home: const Home(),
    );
  }
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
        children: [
          SearchPanel(),
          ItemData(),
        ],
      ),
    );
  }
}

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            SearchPanelText(),
            SearchPanelInputs()
          ],
        )
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
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: DropdownButton<String>(
              items: ItemCategory.values.map<DropdownMenuItem<String>>(
                  (ItemCategory item) {
                    return DropdownMenuItem<String>(
                      value: item.label,
                      child: Text(item.label,
                      style: const TextStyle(
                          fontSize: 14,
                          letterSpacing: 1.2,
                          color: Colors.black
                      ),),
                    );
                  }
              ).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedItem = value;
                });
              },
              value: selectedItem,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text(
              "の検索",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          ),
        ]
      ),
    );
  }
}

class SearchPanelInputs extends StatelessWidget {
  const SearchPanelInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: SearchPanelInputBox(
            inputName: "キーワード",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: SearchPanelInputBox(
            inputName: "価格",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4),
          child: SearchPanelInputBox(
            inputName: "メーカー"
          ),
        ),
      ],
    );
  }
}
class SearchPanelInputBox extends StatefulWidget {
  final String inputName;
  const SearchPanelInputBox({super.key, required this.inputName});

  @override
  State<SearchPanelInputBox> createState() => _SearchPanelInputBoxState();
}
class _SearchPanelInputBoxState extends State<SearchPanelInputBox> {
  String? input;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.inputName,
              style: const TextStyle(
                fontSize: 18
              ),
            ),
            const SizedBox(
                width: 144,
                child: TextField (
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
            )
          ]
      ),
    );
  }
}
