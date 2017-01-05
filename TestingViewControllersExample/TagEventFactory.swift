import Foundation

class TagEventFactory {

    static func refreshButtonPressedEvent() -> TagEvent {
        return TagEvent(body: "refresh button pressed", userId: 123)
    }

    static func searchButtonPressedEvent() -> TagEvent {
        return TagEvent(body: "search button pressed", userId: 123)
    }

    static func searchCancelButtonPressedEvent() -> TagEvent {
        return TagEvent(body: "search cancel button pressed", userId: 123)
    }
}
