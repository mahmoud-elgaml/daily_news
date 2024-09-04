
import 'package:daily_news/views/categories_card_view.dart';
import 'package:daily_news/views/news_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Daily",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Text(
              "News ",
              style: TextStyle(
                color: Color.fromARGB(255, 242, 58, 58),
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            CategoriesCardView(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
