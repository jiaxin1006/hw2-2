

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let sideLength = min(rect.width, rect.height) * 15 // 調整大小
        let height = sideLength * sqrt(3) / 2
        path.move(to: CGPoint(x: rect.midX, y: rect.midY - height / 2))
        path.addLine(to: CGPoint(x: rect.midX - sideLength / 2, y: rect.midY + height / 2))
        path.addLine(to: CGPoint(x: rect.midX + sideLength / 2, y: rect.midY + height / 2))
        path.closeSubpath()
        
        return path
    }
}

struct ContentView: View {
    @State private var isClosed = false
    private let screenSize = UIScreen.main.bounds
    private let directions: [CGSize] = [
        CGSize(width: -50, height: -50),  // E
        CGSize(width: 50, height: -50),   // D
        CGSize(width: -50, height: 50),   // C
        CGSize(width: 50, height: 50),    // B
        CGSize(width: 0, height: -100),   // A
        CGSize(width: 0, height: 100)     // F
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ForEach(0..<6) { i in
                Triangle()
                    .stroke(Color.black, lineWidth: 2)  // 黑色邊框線
                    .background(Triangle().fill(Color.gray))  // 灰色填充
                    .frame(width: screenSize.width * 0.4, height: screenSize.height * 0.4)
                    .offset(x: isClosed ? directions[i].width : 800, y: isClosed ? directions[i].height : 0)
                    .rotationEffect(.degrees(Double(i) * 60))
                    .animation(.easeInOut(duration: 0.8), value: isClosed)
                    .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
            }
        }
        .onAppear {
            withAnimation {
                isClosed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) { // 根據動畫的時長調整
                withAnimation {
                    isClosed = false // 回到原本位置
                }
            }
        }
    }
}

