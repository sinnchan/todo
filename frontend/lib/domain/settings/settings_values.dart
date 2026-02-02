/// ソート順
enum SortKey {
  /// 作成順
  createdAt,

  /// 更新順
  updatedAt,

  /// 期限順
  dueAt,

  /// タイトル順
  title,
}

enum SortDirection {
  asc,
  desc,
}
