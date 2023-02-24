import 'package:flutter/material.dart';

const String pImageBase = 'https://image.tmdb.org/t/p/w342';
const String bImageBase = 'https://image.tmdb.org/t/p/w300';
const List genres = [];
const List newReleases = [];
const List mostPopular = [];
const List recommended = [];
const List topChart = [`newReleases`, `mostPopular`, `recommended`];

class MainItem extends StatelessWidget {
  final List data;

  const MainItem({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 50,
            mainAxisSpacing: 20,
            maxCrossAxisExtent: 300,
            childAspectRatio: 2.8 / 5),
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GridTile(
                  // ignore: sort_child_properties_last
                  child: Image(
                    image:
                        NetworkImage(pImageBase + data[index]["poster_path"]),
                    fit: BoxFit.fill,
                  ),
                  footer: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.all(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 3),
                        color: Colors.yellowAccent,
                        child: Text(
                          "\u{2605} " + data[index]["vote_average"].toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index]["original_title"],
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    const Text('aa'),
                  ],
                )),
          ]);
        });
  }
}
