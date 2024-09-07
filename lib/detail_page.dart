import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String itemID;
  const DetailPage({super.key, required this.itemID});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Map<String, dynamic> itemData = {};
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getItemData();
  }

  Future<void> getItemData() async {
    setState(() {
      isLoading = true;
    });
    var db = FirebaseFirestore.instance;
    await db
      .collection("mouse")
      .doc(widget.itemID)
      .get()
      .then((e) => itemData = e.data()!);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
      ? const Center(
          child: const CircularProgressIndicator(),
        )
      : Scaffold(
        appBar: AppBar(
            title: Text(itemData["name"])
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
          ),
          child: ListView(
            children: [
              Image.network(
                itemData["image_url"],
              ),
              Divider(
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Theme.of(context).colorScheme.onSurface
              ),
              ItemTitle(title: itemData["name"],),
              const SeparateLine(),
              ItemDetail(itemData: itemData,),
              const SeparateLine(),
              DescriptionText(text: itemData["description"]),
              const BuyButtons(),
            ],
          ),
        )
    );
  }
}

class ItemDetail extends StatelessWidget {
  final Map<String, dynamic> itemData;
  const ItemDetail({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface
      ),
      child: Column(
        children: [
          ItemDetailTable(title: "ポーリングレート", content: "${itemData["polling"]}Hz"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "最高DPI", content: "${itemData["max_dpi"]}DPI"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "カラー", content: itemData["colors"].join(" / ")),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "接続方法", content: itemData["connection"].join(" / ")),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "重量", content: "${itemData["weight"]}g"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "バッテリー持ち", content: "Max ${itemData["battery"]}h"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "形状", content: itemData["shape"]),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          ItemDetailTable(title: "スイッチ", content: itemData["switch_type"]),
        ],
      ),
    );
  }
}
class ItemDetailTable extends StatelessWidget {
  const ItemDetailTable({super.key, required String this.title, required String this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(width: 16),
              Text(
                content,
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        ],
      )
    );
  }
}
class SeparateLine extends StatelessWidget {
  final Color? color;
  const SeparateLine({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      indent: 16,
      endIndent: 16,
      color: color ?? Theme.of(context).colorScheme.onSurface
    );
  }
}
class DescriptionText extends StatelessWidget {
  final String text;
  const DescriptionText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
        child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium
        )
    );
  }
}
class BuyButtons extends StatelessWidget {
  const BuyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column (
        children: [
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                ),
                onPressed: () { },
                child: Text(
                  "Amazonで購入する",
                  style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onSecondaryContainer
                  ),
                ),
              )
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              ),
              onPressed: () { },
              child: Text(
                "ふもっふのお店で検索",
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onSecondaryContainer
                ),
              ),
            )
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              ),
              onPressed: () { },
              child: Text(
                "公式サイト",
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onSecondaryContainer
                ),
              ),
            )
          )
        ],
      )
    );
  }
}

class ItemTitle extends StatelessWidget {
  final String title;
  const ItemTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineLarge,
      textAlign: TextAlign.center,
    );
  }
}