import XCTest
@testable import TestingViewControllersExample

class ViewControllerCollaborationTests: XCTestCase {

    var subject: ViewController!
    var taggerMock: TaggerMock!

    override func setUp() {
        super.setUp()
        taggerMock = TaggerMock()
        subject = ViewController.instantiate(tagger: taggerMock)
        subject.performLifecycle()
    }

    // MARK: - Tagging collaboration tests

    func test_tagRefreshButtonPressed_isFiredOn_didPressRefreshButton() {
        subject.didPressRefreshButton(self)
        subject.didPressRefreshButton(self)
        XCTAssertEqual(taggerMock.tagRefreshButtonPressedCounter, 2)
    }

    func test_tagSearchButtonPressed_isFiredOn_searchBarSearchButtonClicked() {
        let searchBar = UISearchBar()
        subject.searchBarSearchButtonClicked(searchBar)
        XCTAssertEqual(taggerMock.tagSearchButtonPressedCounter, 1)
    }

    func test_tagSearchCancelButtonPressed_isFiredOn_searchBarCancelButtonClicked() {
        let searchBar = UISearchBar()
        subject.searchBarCancelButtonClicked(searchBar)
        XCTAssertEqual(taggerMock.tagSearchCancelButtonPressedCounter, 1)
    }
}

class TaggerMock: Tagging {

    var tagRefreshButtonPressedCounter: Int = 0
    var tagSearchButtonPressedCounter: Int = 0
    var tagSearchCancelButtonPressedCounter: Int = 0

    func tagRefreshButtonPressed() {
        tagRefreshButtonPressedCounter += 1
    }

    func tagSearchButtonPressed() {
        tagSearchButtonPressedCounter += 1
    }

    func tagSearchCancelButtonPressed() {
        tagSearchCancelButtonPressedCounter += 1
    }
}
