import Testing
@testable import SetMath

@Suite("union")
struct union_method {
    @Test("if two types have nothing in common, returns empty set")
    func example() async throws {
        
        let data = [
            ["a", "b"],
            ["c", "d"]
        ]
        
        #expect(union(of: data).isEmpty)
    }
}
