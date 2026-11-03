//
//  PractiseView.swift
//  Challenge 2 - Rock Paper Scissor game clone
//
//  Created by Shubham Kashyap on 03/11/26.
//

import SwiftUI

struct PractiseView: View {
    // properties
    let agents = ["Cyril", "Lana", "Pam", "Sterling"]

    
    // body
    var body: some View {
        ForEach(agents, id: \.self) { name in
            Text("Row \(name)")
        }
    }
}

#Preview {
    PractiseView()
}
