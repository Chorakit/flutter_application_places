import 'package:flutter/material.dart';
import 'package:flutter_application_places/screens/add_place.dart';
import 'package:flutter_application_places/widgrts/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (ctx) => const AddPlace()));
            },
          ),
        ],
      ),
      body: PlacesList(places: []),
    );
  }
}
