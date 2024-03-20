//
//  MainView.swift
//  SenseOfTime
//
//  Created by 송재훈 on 3/20/24.
//

import SwiftUI

struct MainView: View {
    @State var second = 1
    
    var body: some View {
        picker
    }
    
    @ViewBuilder
    var picker: some View {
        VStack(spacing: -20) {
            Image(systemName: "arrowtriangle.down.fill")
            
            Picker(selection: $second) {
                ForEach(1..<301) { number in
                    HStack {
                        Text(number.description)
                            .font(.footnote)
                            .rotationEffect(.degrees(90))
                        
                        Rectangle()
                            .frame(width: number % 5 == 0 ? 40 : 15, height: 5)
                        Rectangle()
                            .frame(width: number % 5 == 0 ? 0 : 25, height: 5)
                            .foregroundStyle(.clear)
                    }
                    .tag(number)
                }
            } label: { }
                .rotationEffect(.degrees(-90))
                .frame(width: 100)
                .pickerStyle(.wheel)
                .scaleEffect(2.0)
            
            Image(systemName: "arrowtriangle.up.fill")
        }
    }
}

#Preview {
    MainView()
}
