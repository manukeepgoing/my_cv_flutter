import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/main-page/grid/grid_item.dart';

class MainPageCardList extends StatelessWidget {
  const MainPageCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      padding: const EdgeInsets.all(5),
      itemCount: gridItems.length,
      itemBuilder: (BuildContext context, int index) {
        // card with an image and text on the bottom
        return Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: InkWell(
            splashColor: Colors.blue,
            onTap: () {
              Future.delayed(const Duration(milliseconds: 300), () {
                Navigator.pushNamed(context, gridItems[index].url);
              });
            },
            child: Column(
              children: [
                _cardImage(context, gridItems[index]),
                _buttonText(gridItems[index]),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _cardImage(BuildContext context, GridItem gridItem) {
    return Expanded(
      child: FutureBuilder(
          future: assetsImage(gridItem.imageUrl),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(gridItem.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }
          }),
    );
  }

  Widget _buttonText(GridItem gridItem) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Center(
        child: Text(
          gridItem.name,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Future<AssetImage> assetsImage(String imageUrl) async {
    return Future.delayed(
        Duration(milliseconds: 500), () => AssetImage(imageUrl));
  }
}
