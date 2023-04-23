import 'package:app/Dtos/Providers/activities_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ListActivities extends StatelessWidget {
  const ListActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivitiesProvider>(
      builder: (context, activitiesProvider, child) {
        if (activitiesProvider.activities.isEmpty) {
          activitiesProvider.fetchActivities();
          return const Center(child: CircularProgressIndicator());
        } else {
          return Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Actividades del domingo 02 de Marzo:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  children: activitiesProvider.activities.map((activity) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            'assets/images/Do it.svg',
                            width: 60.0,
                          ),
                          title: Text(
                            activity.title ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          subtitle: Text(
                            activity.time ?? '',
                          ),
                          trailing:
                              const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
