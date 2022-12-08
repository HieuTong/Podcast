//
//  MainTabBarController.swift
//  LearningPodcast
//
//  Created by HieuTong on 08/12/2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .purple
        view.backgroundColor = .white
        
        viewControllers = [
            generateNavigationController(for: ViewController(), title: "Favorites", image: UIImage(named: "favorites")),
            generateNavigationController(for: ViewController(), title: "Search", image: UIImage(named: "search")),
            generateNavigationController(for: ViewController(), title: "Downloads", image: UIImage(named: "downloads")),
        ]
    }
    
    fileprivate func generateNavigationController(for rootViewController: UIViewController, title: String, image: UIImage?) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }

}
