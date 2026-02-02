DateTime fromGraphQLAWSDateTime(String value) {
  return DateTime.parse(value);
}

String toGraphQLAWSDateTime(DateTime value) {
  return value.toUtc().toIso8601String();
}
