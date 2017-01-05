import UIKit

class ViewController: UIViewController {

    // MARK: - Init

    static func instantiate(tagger: Tagging = Tagger()) -> ViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.tagger = tagger
        return vc
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Attributes

    var searchBar: UISearchBar!
    var tagger: Tagging!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchBar()
    }

    // MARK: - Private

    func setupSearchBar() {
        searchBar = UISearchBar()
        searchBar.searchBarStyle = .prominent
        searchBar.placeholder = "Search..."
        searchBar.delegate = self
        searchBar.sizeToFit()
        navigationItem.titleView = searchBar
    }

    // MARK: - Actions

    @IBAction func didPressRefreshButton(_ sender: Any) {
        tagger.tagRefreshButtonPressed()
    }

}

extension ViewController: UISearchBarDelegate {

    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //...
        tagger.tagSearchButtonPressed()
    }

    public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        //...
        tagger.tagSearchCancelButtonPressed()
    }

}
