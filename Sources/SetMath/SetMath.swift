// The Swift Programming Language
// https://docs.swift.org/swift-book

func union<Element: Hashable>(of collections: some Collection<some Collection<Element>>) -> Set<Element> {
    
    if collections.count == 1,
       let first = collections.first {
        return Set(first)
    }
    
    return []
}
