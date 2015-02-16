// MARK: - Lexing rules

let newline = %"\n"
let header = ((%"#" * (1..<7)) --> { $0.count }) ++ ignore(%" ") ++ (any+ --> { "".join($0) }) ++ newline
