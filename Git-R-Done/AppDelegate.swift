//
//  AppDelegate.swift
//  Git-R-Done
//
//  Created by Brian Gass on 8/30/19.
//  Copyright © 2019 Brian Gass. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //print(Realm.Configuration.defaultConfiguration.fileURL)
  
        do {
            _ = try Realm()

        } catch {
            print("Error initializing new Realm, \(error)")
        }
        
        
        return true
    }
    

}
