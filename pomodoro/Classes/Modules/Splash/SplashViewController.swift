//
//  SplashViewController.swift
//  pomodoro
//
//  Created by Muhammed Khaled on 03/10/2026.
//

import UIKit

class SplashViewController: UIViewController {
    private let splashView = SplashView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(splashView)
        NSLayoutConstraint.activate([
            splashView.topAnchor.constraint(equalTo: view.topAnchor),
            splashView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            splashView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            splashView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showMainViewController()
        }
    }

    private func showMainViewController() {
        let mainViewController = MainTabBarViewController()

        guard let window = view.window else {
            return
        }

        mainViewController.view.alpha = 0
        mainViewController.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)

        window.rootViewController = mainViewController

        UIView.animate(
            withDuration: 0.4,
            delay: 0,
            options: [.curveEaseOut]
        ) {
            mainViewController.view.alpha = 1
            mainViewController.view.transform = .identity
        }
    }
}
