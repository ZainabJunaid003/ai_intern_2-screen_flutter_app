import 'package:flutter/material.dart';

import '../data/book_repository.dart';
import '../models/book.dart';
import 'detail_screen.dart';

/// Screen 1: shows all books in a scrollable list.
class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late Future<List<Book>> _booksFuture;

  @override
  void initState() {
    super.initState();
    _booksFuture = fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Books')),
      body: FutureBuilder<List<Book>>(
        future: _booksFuture,
        builder: (context, snapshot) {
          // Still waiting for the async call to finish.
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong.'));
          }

          // snapshot.data is nullable, so "?? []" gives an empty list as a fallback.
          final books = snapshot.data ?? [];

          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(book.title),
                subtitle: Text(book.author),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  // Navigate to screen 2 and pass the tapped book.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(book: book),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
