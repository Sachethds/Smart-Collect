//
//  SmartCollectApp.swift
//  SmartCollect
//
//  Created by Sacheth D S on 17/12/25.
//

import SwiftUI
import UIKit

@main
struct SmartCollectApp: App {
    // Hold a reference to the UIKit app delegate using the adaptor wrapper.
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            GoogleMapView(latitude: 12.9716, longitude: 77.5946)
        }
    }
}
