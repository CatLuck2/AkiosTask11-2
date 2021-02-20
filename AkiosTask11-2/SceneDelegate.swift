//
//  SceneDelegate.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var navigtionController: UINavigationController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene as! UIWindowScene)
        self.window = window
        // DisplayViewControllerを初期画面に
        let displayVC = DisplayViewController()
        window.rootViewController = displayVC
        window.makeKeyAndVisible()

        // アプリ起動度にUserDefaultを削除
        UserDefaults.standard.removeObject(forKey: Prefecture.userDefaultKey)
    }
}

