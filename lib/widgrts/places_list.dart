import 'package:flutter/material.dart';
import 'package:flutter_application_places/models/place.dart';
import 'package:flutter_application_places/providers/use_places.dart';
import 'package:flutter_application_places/screens/places_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesList extends ConsumerWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(userPlacesProvider);

    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet, start adding some!',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder:
          (ctx, index) => ListTile(
            title: Text(
              places[index].title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => PlacesDetailScreen(place: places[index]),
                ),
              );
            },
          ),
    );
  }
}
