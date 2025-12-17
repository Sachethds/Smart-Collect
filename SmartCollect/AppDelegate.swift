//
//  AppDelegate.swift
//  SmartCollect
//
//  Created by Sacheth D S on 17/12/25.
//

import Foundation
import UIKit
import Firebase
import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        GMSServices.provideAPIKey("AIzaSyDFdIwkbgvgDER8MMaY0zoWX1gN9a-KvpY")
        return true
    }
}
