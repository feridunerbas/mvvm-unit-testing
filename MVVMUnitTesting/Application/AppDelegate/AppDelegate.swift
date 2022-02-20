//
//  AppDelegate.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder {
    
    // MARK: - Properties
    var window: UIWindow?
    
}

// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        setupWindow()
        return true
    }
    
}

// MARK: - Window
private extension AppDelegate {
    
    func setupWindow() {
        let homeViewController: HomeNavigationController = resolve()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = homeViewController
    }
    
}
