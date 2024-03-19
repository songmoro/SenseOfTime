//
//  ProgressView.swift
//  SenseOfTime
//
//  Created by 송재훈 on 3/19/24.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        Picker(selection: .constant(5)) {
            ForEach(0..<301) {
                Text($0.description)
            }
        } label: {
            
        }
        .pickerStyle(.wheel)

        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProgressView()
}
