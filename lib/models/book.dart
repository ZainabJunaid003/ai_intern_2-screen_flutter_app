/// A simple class that describes one book.
class Book {
  final int id;
  final String title;
  final String author;
  final int year;

  /// The "?" means this value is nullable: a book may have no description.
  final String? description;

  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.year,
    this.description,
  });

  /// Returns the book's details as a Map (key -> value).
  Map<String, String> toDetails() {
    return {
      'Author': author,
      'Year': year.toString(),
    };
  }
}
