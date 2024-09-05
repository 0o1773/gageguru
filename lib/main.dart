import 'package:flutter/material.dart';
import 'package:myapp/detail_page.dart';
import 'package:myapp/providers/category.dart';
import 'package:myapp/providers/keywords.dart';
import 'package:myapp/providers/maker.dart';
import 'package:myapp/providers/price.dart';
import 'package:provider/provider.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoryModel()),
        ChangeNotifierProvider(create: (context) => PriceModel()),
        ChangeNotifierProvider(create: (context) => KeyWordsModel()),
        ChangeNotifierProvider(create: (context) => MakerModel()),
      ],
      child: const MyApp(),
    )
  );
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
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          top: false,
          child: Container(
            padding: const EdgeInsets.only(top: 48.0),
            color: Theme.of(context).colorScheme.surface,
            child: const Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                            children: [
                              SearchPanel(),
                              ItemDataList(),
                            ]
                        )
                    )
                ),
              ],
            ),
          )
        )
    );
  }
}

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow
          )
        ]
      ),
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
      padding: const EdgeInsets.only(bottom: 16),
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
                      child: Text(
                        item.label,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  }
              ).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedItem = value;
                });
              },
              value: selectedItem
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "の検索",
              style: Theme.of(context).textTheme.bodyMedium,
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
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
                width: 144,
                child: TextField (
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                )
            )
          ]
      ),
    );
  }
}

class ItemDataList extends StatelessWidget {
  const ItemDataList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemData(),
        ItemData(),
        ItemData(),
        ItemData(),
        ItemData()
      ],
    );
  }
}
class ItemData extends StatelessWidget {
  const ItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemDataThumbnail(
          title: "Pulsar Xlite V3 Midium",
          imgURL: "https://pulsargg.jp/cdn/shop/files/Pulsar-Xlite-V3-es-Wireless-mouse_Size2_white_001-562537_large.png",
        ),
        ItemDataText(texts: ["Size: S/M/L", "Colors: Black / Red / White", "Connection: Wireless / Wired", "50g", "8000Hz"],)
      ],
    );
  }
}
class ItemDataThumbnail extends StatelessWidget {
  final String title;
  final String imgURL;
  const ItemDataThumbnail({super.key, required this.title, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://pulsargg.jp/cdn/shop/files/Pulsar-Xlite-V3-es-Wireless-mouse_Size2_white_001-562537_large.png",
              width: 128,
              height: 128,
            )
          ),
          Flexible(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: ItemDataThumbnailButtons(),
                    )
                  ],
                )
            ),
          ),
        ],
      )
    );
  }
}
class ItemDataThumbnailButtons extends StatelessWidget {
  const ItemDataThumbnailButtons({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Text(
            "Details",
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.onPrimaryContainer
            ),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
          ),
          child: Text(
            "Official Site",
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.onTertiaryContainer,
            ),
          ),
        ),
      ],
    );
  }

}
class ItemDataText extends StatelessWidget {
  final List<String> texts;
  const ItemDataText({super.key, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: texts.map((text) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      )).toList(),
    );
  }
}

enum ItemCategory {
  keyboard("キーボード"),
  monitor("モニター"),
  mouse("マウス"),
  headset("ヘッドセット");

  const ItemCategory(this.label);
  final String label;
}
