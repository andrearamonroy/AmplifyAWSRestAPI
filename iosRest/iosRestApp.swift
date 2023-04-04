//
//  iosRestApp.swift
//  iosRest
//
//  Created by Andrea Monroy on 3/30/23.
//

import SwiftUI
import Amplify
import AWSDataStorePlugin
import AWSCognitoAuthPlugin
import AWSAPIPlugin
import Combine

@main
struct iosRestApp: App {

    
    
    init() {
         configureAmplify()
       
  }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }


    func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.configure()
            print("Amplify configured with API and Auth plugin")
        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
        
    }
    

}
