
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import AppCenterPush

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        MSAppCenter.setLogLevel(.verbose)
        
        MSAppCenter.start("bb88102b-be73-47a5-a18e-4af070588992", withServices: [
            MSAnalytics.self,
            MSCrashes.self,
            MSPush.self,
        ])
        
        return true
    }
}
