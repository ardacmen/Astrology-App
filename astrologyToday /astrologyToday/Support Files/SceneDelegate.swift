//
//  SceneDelegate.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
                    window = UIWindow(frame: UIScreen.main.bounds)
                    let home = OnboardingViewController()
                    self.window?.rootViewController = UINavigationController(rootViewController: home)
                    window?.makeKeyAndVisible()
                    window?.windowScene = windowScene
        
    }

    


}

