//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by MAC42 on 5/06/22.
//

import Foundation
import FirebaseAuth

class LaunchViewModel : ObservableObject {
    
    let appState = AppState.shared
    
    init() {
        appState.currentScreen = Auth.auth().currentUser != nil ? .main : .signIn
    }
}
