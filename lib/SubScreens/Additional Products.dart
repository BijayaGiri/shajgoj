import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
class AdditionalProductsScreen extends StatefulWidget {
  const AdditionalProductsScreen({super.key});

  @override
  State<AdditionalProductsScreen> createState() => _AdditionalProductsScreenState();
}

class _AdditionalProductsScreenState extends State<AdditionalProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 5,
                runSpacing: 5,
                children: List.generate(12, (index)=>FeaturedProducts(context)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
