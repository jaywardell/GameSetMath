import Testing
@testable import SetMath

@Suite("union")
struct union_method {

    @Test("if set is empty, returns nil")
    func example_empty() async throws {
        let data: [[String]] = []
        
        #expect(union(of: data).isEmpty)
    }

    @Test("returns all members of all collections")
    func example_two_disjoint() async throws {
        let data: [[String]] = [
            ["a", "b"],
            ["c", "d"]
        ]
        
        #expect(union(of: data) == Set(["a", "b", "c", "d"]))
    }
    
    @Test("if set has one collection, returns that collection")
    func example_single_collection() async throws {
        let expected = ["a", "b"]
        let data = [expected]
        
        let found = union(of: data)
        #expect(found == Set(expected))
    }

    @Test("if set has two equivalent collections, returns the elements of the collections")
    func example_duplicate_collections() async throws {
        let expected = ["a", "b"]
        let data = [expected, expected]
        
        let found = union(of: data)
        #expect(found == Set(expected))
    }

}
