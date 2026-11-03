//
//  CustomBinds.swift
//  Challenge 2 - Rock Paper Scissor game clone
//
//  Created by Shubham Kashyap on 03/11/26.
//

import SwiftUI

struct CustomBinds: View {
    @State private var selection = 0
    @State var agreedToTerms = false
    @State var agreedToPrivacyPolicy = false
    @State var agreedToEmails = false

//    var body: some View {
//        let binding = Binding(
//            get: { selection },
//            set: { selection = $0 }
//        )
//
//        return VStack {
//            Picker("Select a number", selection: binding) {
//                ForEach(0..<3) {
//                    Text("Item \($0)")
//                }
//            }
//            .pickerStyle(.segmented)
//        }
//    }
    
    var body: some View {
        let agreedToAll = Binding<Bool>(
            get: {
                agreedToTerms && agreedToPrivacyPolicy && agreedToEmails
            },
            
            set: {
                agreedToTerms = $0
                agreedToPrivacyPolicy = $0
                agreedToEmails = $0
            }
        )
        
        return VStack {
            Toggle("Agree to terms", isOn: $agreedToTerms)
            Toggle("Agree to emails", isOn: $agreedToEmails)
            Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
            Toggle("Agree to all", isOn: agreedToAll)
        }
    }
    
}

#Preview {
    CustomBinds()
}
