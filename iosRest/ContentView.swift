//
//  ContentView.swift
//  iosRest
//
//  Created by Andrea Monroy on 3/30/23.
//

import SwiftUI
import Amplify
import Combine

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .task {
                await getTodo()
            }
    }
    
    
    func postTodo() async {
        let message = #"{"message": "my new item"}"#
        let request = RESTRequest(apiName: "apiRest",path: "/items", body: message.data(using: .utf8))
        do {
            let data = try await Amplify.API.post(request: request)
            let str = String(decoding: data, as: UTF8.self)
            print("Success: \(str)")
        } catch let error as APIError {
            print("Failed due to API error: ", error)
        } catch {
            print("Unexpected error: \(error)")
        }
    }
    
    func getTodo() async {
        let request = RESTRequest(apiName: "apiRest",path: "/items")
        do {
            let data = try await Amplify.API.get(request: request)
            let str = String(decoding: data, as: UTF8.self)
            print("Success: \(str)")
        } catch let error as APIError {
                print("Failed due to API error: ", error)
        } catch {
            print("Unexpected error: \(error)")
        }
    }}
    


