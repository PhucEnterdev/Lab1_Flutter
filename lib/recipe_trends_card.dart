import 'package:flutter/material.dart';

class RecipeTrendsCard extends StatelessWidget {
  const RecipeTrendsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/model2.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Recipe Trends',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      children: [
                        buildChipRecipeHaveDelete('Healthy'),
                        buildChipRecipeHaveDelete('Vegan'),
                        buildChipRecipeHaveDelete('Carrots'),
                        buildChipRecipe('Greens'),
                        buildChipRecipe('Wheat'),
                        buildChipRecipe('Mint'),
                        buildChipRecipe('Lemongrass'),
                        buildChipRecipe('Salad'),
                        buildChipRecipe('Melon'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Chip buildChipRecipe(String recipe) {
    return Chip(
      label: Text(
        recipe,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
    );
  }

  Chip buildChipRecipeHaveDelete(String recipe) {
    return Chip(
      label: Text(
        recipe,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      onDeleted: () {},
      backgroundColor: Colors.black.withOpacity(0.7),
    );
  }
}
