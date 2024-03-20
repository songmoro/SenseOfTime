//
//  ReadyView.swift
//  SenseOfTime
//
//  Created by 송재훈 on 3/20/24.
//

import SwiftUI

struct ReadyView: View {
    @State var count = 5
    @State var timer: Timer?
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 15)
                .frame(width: 250)
                .foregroundStyle(.gray)
            
            Text(count.description)
                .font(.largeTitle)
        }
        .onAppear {
            count = 5
            timer?.invalidate()
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                if self.count > 1 {
                    self.count -= 1
                }
                else {
                    timer.invalidate()
                }
            }
        }
        .onDisappear {
            timer?.invalidate()
        }
    }
}

#Preview {
    ReadyView()
}
