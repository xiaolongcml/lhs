import UIKit
import WebKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = WebViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

class WebViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create WKWebView configuration
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        view = webView
        
        // Load the URL
        if let url = URL(string: "https://appedwtljez3271.xet.citv.cn/p/t/v1/ecommerce/h5_order/writeoffTool/navigation/selfList?team_id=dt_djCvRWP5fhWMZI3aiugY") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Set up fullscreen mode
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        UIViewController.attemptRotationToDeviceOrientation()
    }
} 