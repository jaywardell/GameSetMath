// The Swift Programming Language
// https://docs.swift.org/swift-book

func union<Element: Hashable>(of collections: some Collection<some Collection<Element>>) -> Set<Element> {
  
    var out = Set<Element>()
    
    for collection in collections {
        out = out.union(collection)
    }
        
    return out
}
