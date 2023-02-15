package testing

fun emptyToNull(s: String): String? {
  if (s.isEmpty()) {
    return null
  }
  return s
}
