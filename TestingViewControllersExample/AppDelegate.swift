import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let navigationController = UINavigationController()
        self.window?.rootViewController = navigationController
        let initialViewController = ViewController.instantiate()
        navigationController.pushViewController(initialViewController, animated: false)
        self.window?.makeKeyAndVisible()
        return true
    }
}

