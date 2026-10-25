//
//  MainTabBarViewController.swift
//  pomodoro
//
//  Created by Muhammed Khaled on 03/10/2026.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        setupTabBarAppearance()
    }

    private func setupTabs() {
        let nav1 = UINavigationController(rootViewController: UIViewController())
        let nav2 = UINavigationController(rootViewController: UIViewController())
        let nav3 = UINavigationController(rootViewController: UIViewController())
        let nav4 = UINavigationController(rootViewController: UIViewController())
        let nav5 = UINavigationController(rootViewController: UIViewController())

        nav1.tabBarItem = UITabBarItem(title: "timeline", image: UIImage(systemName: "chart.bar.yaxis"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "timer", image: UIImage(systemName: "timer"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "garden", image: UIImage(systemName: "tree"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "blacklist", image: UIImage(systemName: "nosign"), tag: 4)
        nav5.tabBarItem = UITabBarItem(title: "usage", image: UIImage(systemName: "chart.bar.xaxis.descending"), tag: 5)
        let tabs = [
            nav1,
            nav2,
            nav3,
            nav4,
            nav5
        ]
        for tab in tabs {
            tab.navigationBar.prefersLargeTitles = true
        }
        setViewControllers(tabs, animated: false)
    }

    private func setupTabBarAppearance() {
        tabBar.tintColor = .primary
    }
}
