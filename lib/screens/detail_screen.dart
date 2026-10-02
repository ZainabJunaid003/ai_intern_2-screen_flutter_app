import 'package:flutter/material.dart';

import '../models/book.dart';

/// Screen 2: shows the details of one book.
class DetailScreen extends StatelessWidget {
  final Book book;

  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final details = book.toDetails();

    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),

            // One Row per entry in the Map.
            for (final entry in details.entries)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: Text(
                        '${entry.key}:',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(entry.value),
                  ],
                ),
              ),
            const SizedBox(height: 16),

            // description is nullable, so "??" gives a default when it is null.
            Text(book.description ?? 'No description available.'),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back to list'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
