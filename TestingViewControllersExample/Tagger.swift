import Foundation

class Tagger: Tagging {

    func tagRefreshButtonPressed() {
        let tagEvent = TagEventFactory.refreshButtonPressedEvent()
        TaggerGateway.tagWith(event: tagEvent)
    }

    func tagSearchButtonPressed() {
        let tagEvent = TagEventFactory.searchButtonPressedEvent()
        TaggerGateway.tagWith(event: tagEvent)
    }

    func tagSearchCancelButtonPressed() {
        let tagEvent = TagEventFactory.searchCancelButtonPressedEvent()
        TaggerGateway.tagWith(event: tagEvent)
    }
}

class TaggerGateway {

    static func tagWith(event: TagEvent) {
        print("sending event with body: \(event.body)")
    }
}
