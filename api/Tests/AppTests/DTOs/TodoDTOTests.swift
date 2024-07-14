@testable import App
import Foundation
import Testing

@Suite
struct TodoDTOTests {
    @Test func toModel() {
        let dto = TodoDTO(
            id: UUID(uuidString: "36C66358-A4B9-475F-A02A-2F93092E1F12"),
            title: "Title"
        )

        let model = dto.toModel()

        #expect(model == Todo(
            id: UUID(uuidString: "36C66358-A4B9-475F-A02A-2F93092E1F12"),
            title: "Title"
        ))
    }
}
