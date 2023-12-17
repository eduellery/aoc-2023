extension String {
  public var lines: [String] {
    split(omittingEmptySubsequences: false, whereSeparator: \.isNewline).map { String($0) }
  }
}
