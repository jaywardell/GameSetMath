import Testing
@testable import SetMath

@Test func example() async throws {
    
    let data = [
        ["a", "b"],
        ["c", "d"]
    ]
    
    #expect(union(of: data).isEmpty)
}
