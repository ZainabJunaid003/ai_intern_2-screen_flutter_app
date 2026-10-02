import '../models/book.dart';

/// Pretends to load books from a server.
/// It is async: it waits one second, then returns a List of Book objects.
Future<List<Book>> fetchBooks() async {
  await Future.delayed(const Duration(seconds: 1));

  return const [
    Book(
      id: 1,
      title: 'Clean Code',
      author: 'Robert C. Martin',
      year: 2008,
      description: 'A handbook about writing readable, maintainable code.',
    ),
    Book(
      id: 2,
      title: 'The Pragmatic Programmer',
      author: 'Andrew Hunt and David Thomas',
      year: 1999,
      description: 'Practical advice for becoming a better developer.',
    ),
    Book(
      id: 3,
      title: 'Refactoring',
      author: 'Martin Fowler',
      year: 1999,
      description: 'Techniques for improving existing code safely.',
    ),
    Book(
      id: 4,
      title: 'Design Patterns',
      author: 'Erich Gamma and others',
      year: 1994,
      // No description here, so the detail screen shows a fallback text.
    ),
    Book(
      id: 5,
      title: 'Code Complete',
      author: 'Steve McConnell',
      year: 1993,
      description: 'A practical guide to software construction.',
    ),
  ];
}
