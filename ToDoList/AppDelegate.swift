//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Minh Tan Vu on 21/12/2022.
//

import UIKit
import RealmSwift
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print(Realm.Configuration.defaultConfiguration.fileURL)
        do {
            _ = try Realm()
        } catch {
            print("Error initialising new Realm, \(error)")
        }
        // Override point for customization after application launch.
        return true
    }

}

