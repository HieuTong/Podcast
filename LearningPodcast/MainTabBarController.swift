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
        
        UINavigationBar.appearance().prefersLargeTitles = true

        tabBar.tintColor = .purple
        view.backgroundColor = .white
        
        setupViewControllers()
    }
    
    // MARK:- Setup Functions
    
    func setupViewControllers() {
        viewControllers = [
            generateNavigationController(for: PodcastsSearchController(), title: "Search", image: UIImage(named: "search")),
            generateNavigationController(for: ViewController(), title: "Favorites", image: UIImage(named: "favorites")),
            generateNavigationController(for: ViewController(), title: "Downloads", image: UIImage(named: "downloads")),
        ]
    }
    
    // MARK:- Help functions
    
    fileprivate func generateNavigationController(for rootViewController: UIViewController, title: String, image: UIImage?) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        rootViewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }

}
