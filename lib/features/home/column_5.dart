import 'package:flutter/material.dart';

class _Column_5State extends State<Column_5> {
  // ########## BLOCK: Attributes // ##########

  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 700;
        final narrow = constraints.maxWidth < 600;

        return Container(
          color: Colors.teal.withOpacity(0.50),
          padding: const EdgeInsets.symmetric(vertical: 96),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '05 — NEWS',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 1,
                      color: Colors.amber,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    'Latest from the Department',
                    style: TextStyle(fontSize: 32),
                  ),

                  const SizedBox(height: 48),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _news.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: wide ? 2 : 1,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: wide ? 1.5 : 1.25,
                    ),
                    itemBuilder: (_, i) {
                      return _NewsCard(
                        data: _news[i],
                        featured: i == 0,
                        narrow: narrow,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########

  // ########## END BLOCK: Method // ##########
}

class Column_5 extends StatefulWidget {
  const Column_5({super.key});

  @override
  State<Column_5> createState() => _Column_5State();
}

const _news = <(String, String, String, String)>[
  ('PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER'),
  ('PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER'),
  ('PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER'),
  ('PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER', 'PLACEHOLDER'),
];

class _NewsCard extends StatelessWidget {
  final (String, String, String, String) data;
  final bool featured;
  final bool narrow;

  const _NewsCard({
    required this.data,
    required this.featured,
    required this.narrow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: featured ? Colors.white : Colors.black12,
      padding: EdgeInsets.all(narrow ? 18 : 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                color: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                child: Text(
                  data.$2.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    letterSpacing: .8,
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Flexible(
                child: Text(
                  data.$1,
                  style: const TextStyle(fontSize: 8, color: Colors.black45),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(data.$3, style: TextStyle(fontSize: narrow ? 17 : 20)),

          const SizedBox(height: 10),

          Text(
            data.$4,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black54,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
