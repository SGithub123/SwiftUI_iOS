//
//  ContentView.swift
//  LoginScreenSwiftUI
//
//  Created by Sanket Bhamare on 12/08/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            LoginScreen()
//            InstaHomeScreen()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
        
    }
}
