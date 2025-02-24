// The Swift Programming Language
// https://docs.swift.org/swift-book

func union<Element>(of collections: [[Element]]) -> [Element] {
    
    if collections.count == 1,
       let first = collections.first {
        return first
    }
    
    return []
}
