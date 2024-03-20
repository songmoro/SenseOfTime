//
//  ButtonView.swift
//  SenseOfTime
//
//  Created by 송재훈 on 3/19/24.
//

import SwiftUI

struct ButtonView: View {
    @State var isToggle = false
    @State var status = Status.main
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .rotationEffect(.degrees(isToggle ? 360 : 0))
                    .foregroundStyle(status.buttonColor(.stop))
                    .opacity(status.buttonOpacity(.stop))
            }
            
            ZStack {
                Button {
                    
                } label: {
                    Image(systemName: "stop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .rotationEffect(.degrees(isToggle ? 360 : 0))
                        .foregroundStyle(status.buttonColor(.pause))
                        .opacity(status.buttonOpacity(.pause))
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .rotationEffect(.degrees(isToggle ? 360 : 0))
                        .foregroundStyle(status.buttonColor(.play))
                        .opacity(status.buttonOpacity(.play))
                }
            }
        }
    }
}

#Preview {
    ButtonView()
}
