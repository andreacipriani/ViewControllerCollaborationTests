import Foundation
import XCTest
@testable import TestingViewControllersExample

final class TagEventFactoryTests: XCTestCase {

    // MARK: - Refresh button pressed event

    func test_refreshButtonPressedEvent_hasCorrectUserId() {
        let refreshButtonPressedEvent = TagEventFactory.refreshButtonPressedEvent()
        XCTAssertEqual(refreshButtonPressedEvent.userId, 123)
    }

    func test_refreshButtonPressedEvent_hasCorrectBody() {
        let refreshButtonPressedEvent = TagEventFactory.refreshButtonPressedEvent()
        XCTAssertEqual(refreshButtonPressedEvent.body, "refresh button pressed")
    }

    // MARK: - Search button pressed event

    func test_searchButtonPressedEvent_hasCorrectUserId() {
        let searchButtonPressedEvent = TagEventFactory.searchButtonPressedEvent()
        XCTAssertEqual(searchButtonPressedEvent.userId, 123)
    }

    func test_searchButtonPressedEvent_hasCorrectBody() {
        let searchButtonPressedEvent = TagEventFactory.searchButtonPressedEvent()
        XCTAssertEqual(searchButtonPressedEvent.body, "search button pressed")
    }

    // MARK: - Search cancel button event

    func test_searchCancelButtonPressedEvent_hasCorrectUserId() {
        let searchCancelButtonPressedEvent = TagEventFactory.searchCancelButtonPressedEvent()
        XCTAssertEqual(searchCancelButtonPressedEvent.userId, 123)
    }

    func test_searchCancelButtonPressedEvent_hasCorrectBody() {
        let searchCancelButtonPressedEvent = TagEventFactory.searchCancelButtonPressedEvent()
        XCTAssertEqual(searchCancelButtonPressedEvent.body, "search cancel button pressed")
    }
}
