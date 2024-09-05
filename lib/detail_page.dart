import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pulsar Xlite V3")
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: ListView(
          children: [
            Image.network(
              "https://pulsargg.jp/cdn/shop/files/Pulsar-Xlite-V3-es-Wireless-mouse_Size2_white_001-562537_large.png",
            ),
            Divider(
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Theme.of(context).colorScheme.onSurface
            ),
            const ItemTitle(title: "Pulsar Xlite V3",),
            const SeparateLine(),
            const ItemDetail(),
            const SeparateLine(),
            const DescriptionText(),
            const BuyButtons(),
          ],
        ),
      )
    );
  }
}

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface
      ),
      child: Column(
        children: [
          const ItemDetailTable(title: "ポーリングレート", content: "4000Hz / 8000Hz"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "最高DPI", content: "28000DPI"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "カラー", content: "Red / Black / White"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "接続方法", content: "有線 / 無線"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "重量", content: "55g"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "サイズ", content: "S / M / L"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "バッテリー持ち", content: "最大100時間（メーカー公称値）"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "形状", content: "エルゴノミクス右手"),
          SeparateLine(color: Theme.of(context).colorScheme.onSurface,),
          const ItemDetailTable(title: "スイッチ", content: "光学式"),
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
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
        child: Text(
            "Xlite V3ゲーミングマウスは、右手のパームグリップ用に設計され、快適な使い心地を提供します。PAW3395センサーや高速オプティカルスイッチを搭載し、遅延のないワイヤレス接続と長時間のバッテリー寿命で、競技eスポーツにも最適です。",
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