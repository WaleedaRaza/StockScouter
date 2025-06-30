class NewsArticle {
  final String id;
  final String title;
  final String summary;
  final String content;
  final String source;
  final String url;
  final DateTime publishedAt;
  final double sentiment;
  final List<String> mentionedStocks;
  final List<String> tags;
  final bool isRead;
  final DateTime? readAt;

  const NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
    required this.content,
    required this.source,
    required this.url,
    required this.publishedAt,
    required this.sentiment,
    required this.mentionedStocks,
    required this.tags,
    required this.isRead,
    this.readAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      summary: json['summary'] ?? '',
      content: json['content'] ?? '',
      source: json['source'] ?? '',
      url: json['url'] ?? '',
      publishedAt: DateTime.parse(json['publishedAt']),
      sentiment: (json['sentiment'] ?? 0.0).toDouble(),
      mentionedStocks: List<String>.from(json['mentionedStocks'] ?? []),
      tags: List<String>.from(json['tags'] ?? []),
      isRead: json['isRead'] ?? false,
      readAt: json['readAt'] != null ? DateTime.parse(json['readAt']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'summary': summary,
      'content': content,
      'source': source,
      'url': url,
      'publishedAt': publishedAt.toIso8601String(),
      'sentiment': sentiment,
      'mentionedStocks': mentionedStocks,
      'tags': tags,
      'isRead': isRead,
      'readAt': readAt?.toIso8601String(),
    };
  }

  NewsArticle copyWith({
    String? id,
    String? title,
    String? summary,
    String? content,
    String? source,
    String? url,
    DateTime? publishedAt,
    double? sentiment,
    List<String>? mentionedStocks,
    List<String>? tags,
    bool? isRead,
    DateTime? readAt,
  }) {
    return NewsArticle(
      id: id ?? this.id,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      content: content ?? this.content,
      source: source ?? this.source,
      url: url ?? this.url,
      publishedAt: publishedAt ?? this.publishedAt,
      sentiment: sentiment ?? this.sentiment,
      mentionedStocks: mentionedStocks ?? this.mentionedStocks,
      tags: tags ?? this.tags,
      isRead: isRead ?? this.isRead,
      readAt: readAt ?? this.readAt,
    );
  }

  @override
  String toString() {
    return 'NewsArticle(id: $id, title: $title, source: $source, publishedAt: $publishedAt)';
  }
} 