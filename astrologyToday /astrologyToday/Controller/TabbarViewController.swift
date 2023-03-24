import UIKit

class TabbarViewController : UITabBarController
{
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tabBar.tintColor =  UIColor.black
        setupVCs()
        
    }
    
    
    
    
    func createTabbarFirstElement() -> UIViewController{
        
        let rootViewController =  HomeViewController()
        let navController = UINavigationController(rootViewController: rootViewController)
        rootViewController.navigationItem.title = "Home"
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        navController.tabBarItem.title = "Home"
        navController.tabBarItem.image = UIImage(systemName:  "house")
        return navController
        
    }
    
    func createTabbarSecondElement() -> UIViewController{
        
        let rootViewController =  TarotViewController()
        let navController = UINavigationController(rootViewController: rootViewController)
        rootViewController.navigationItem.title = "Tarot"
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        navController.tabBarItem.title = "Tarot"
        navController.tabBarItem.image = UIImage(systemName:  "menucard")
        return navController
        
    }
    
    
    func createTabbarThirdElement() -> UIViewController{
        
        let rootViewController =  MoonViewController()
        let navController = UINavigationController(rootViewController: rootViewController)
        rootViewController.navigationItem.title = "Moon Phase"
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        navController.tabBarItem.title = "Moon"
        navController.tabBarItem.image = UIImage(systemName:  "moon")
        return navController
        
    }
    
    
    
    func setupVCs(){
        
        viewControllers = [
            createTabbarFirstElement(),
            createTabbarSecondElement(),
            createTabbarThirdElement()
        ]
        
    }
    
    
    
}
