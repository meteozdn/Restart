//
//  ContentView.swift
//  Restart
//
//  Created by Metehan Özden on 18.10.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        ZStack{
            if isOnboardingViewActive {
                OnboardingView()
            }else {
               HomeView()
            }
        }
    }

}

#Preview {
    ContentView()
}
