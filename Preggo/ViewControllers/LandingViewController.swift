//
//  LandingViewController.swift
//  Preggo
//
//  Created by Zachary Chandler on 10/24/20.
//

import UIKit
import Hero

class LandingViewController: UIViewController {
    
    var isLoggedIn = false
    var navigation: UINavigationController?

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateEntry()
        routeApp()
    }

    func animateEntry() { }

    func routeApp() {
        let viewController = isLoggedIn ? UIViewController() : OnboardingViewController()
        viewController.view.backgroundColor = isLoggedIn ? .cyan : .lightGray
        navigationController?.pushViewController(viewController, animated: true)
    }
}

