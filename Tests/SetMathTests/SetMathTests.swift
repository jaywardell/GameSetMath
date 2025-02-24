import Testing
@testable import SetMath

@Suite("union")
struct union_method {

    @Test("if set is empty, returns nil")
    func example_empty() async throws {
        
        let data: [[String]] = []
        
        #expect(union(of: data).isEmpty)
    }

    @Test("if two collections have nothing in common, returns empty set")
    func example_two_disjoint() async throws {
        
        let data = [
            ["a", "b"],
            ["c", "d"]
        ]
        
        #expect(union(of: data).isEmpty)
    }
}
