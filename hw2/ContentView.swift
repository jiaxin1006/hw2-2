//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI
import AVKit

struct AVPlayerView: UIViewControllerRepresentable {
    let videoURL: URL

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let player = AVPlayer(url: videoURL)  // 創建 AVPlayer 實例來播放視頻
        let playerViewController = AVPlayerViewController()  // 創建視頻播放器控制器
        playerViewController.player = player  // 將播放器與控制器關聯
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // 可以在這裡進行更新，如果有需要的話
    }
}


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
    @State private var showTabView = false
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
            
            // 當動畫尚未結束時，顯示動畫
            if !showTabView {
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
            
            // TabView
            if showTabView {
                TabView {
                    CameraGuideView()
                        .tabItem {
                            Image(systemName: "location.fill")
                            Text("指南")
                        }
                    
                    FujifilmList()
                        .tabItem {
                            Image(systemName: "camera")
                            Text("Fujifilm")
                        }
                    
                    OlympusList()
                        .tabItem {
                            Image(systemName: "camera")
                            Text("Olympus")
                        }
                }
                
            }
            
        }
        .onAppear {
            withAnimation {
                isClosed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) { // 根據動畫的時長調整
                withAnimation {
                    isClosed = false // 回到原本位置
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { // 進一步延遲以確保動畫完成
                    withAnimation {
                        showTabView = true // 顯示TabView
                    }
                }
            }
        }
    }
}


struct CameraGuideView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                TabView {
                    ForEach(0..<4) { item in
                        Image("guide_brand_\(item)")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .frame(height: 350)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                Group {
                    Text("1. 感光元件 & 畫素")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)
                    
                    Text("(1) 感光元件分為：全畫幅 (FF) 和 APS-C")
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text("""
                    一般來說全畫幅較 APS-C 有：
                    (1) 較廣的視角
                    (2) 較好的畫質和夜拍能力
                    (3) 同視角下有較淺的景深。
                    """)
                        .padding(.bottom, 4)
                    Text("""
                    缺點：
                    (1) 重量體積通常較大
                    (2) 價格一般也比較昂貴
                    """)
                        .padding(.bottom, 4)

                    Text("(2) 畫素越高就一定越好？")
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text("""
                    如果你的拍攝常常是低光源夜拍、或是需要超高 ISO 的話，那麼高畫素的相機不一定是你的首選；但如果你是追求高細節的風景攝影、或是常常需要二次構圖的話，那麼高一點的畫素對你來說會相當重要。
                    """)
                        .padding(.bottom, 12)
                    
                    Image("guide_0")
                        .resizable()
                        .scaledToFit()
                        .clipped()
                    
                }

                Group {
                    Text("2. 原生 ISO 範圍")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)

                    Text("""
                      相機的原生 ISO 範圍越大，通常代表其感光性能越強，適合低光源下拍攝，如果經常進行夜拍，建議選擇高 ISO 原生範圍的相機。
                    """)
                        .padding(.bottom, 12)
                }

                Group {
                    Text("3. 對焦性能")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)

                    Text("""
                      相機對焦性能很大程度影響相機的優劣
                    (1) 自動對焦點數量 & 覆蓋率：對焦點和覆蓋率越多，越有機會鎖住主題進行對焦。無反相機的對焦覆蓋率一般都 > 80%
                    (2) 是否支持人眼 / 動物 / 車輛的辨識：很大程度展示了相機的 AI 和運算能力。識別能力越高、通常代表相機對焦性能越強
                    (3) 暗部對焦能力：通常會以 -__EV 表示，如 -3EV 表示比正常曝光還要暗了 3 個等級的亮度。一般來說可以達到越暗的對焦能力，表示相機越有能力辨別純黑色以外的物體，對焦性能也通常更好
                    """)
                    .padding(.bottom, 12)
                }
                Group {
                    Text("4. 連拍速度 & 快門速度")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)
                    Text("""
                        連拍速度也是相機性能的另一指標，現今無反相機大多可以達到每秒 10 張的連拍速度。
                    """)

                    Text("連拍速度")
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text("""
                    越快的連拍速度表示相機有越強的性能，但要特別注意高連拍情況是否會有裁切、或者是否有其他功能被犧牲。
                    """)
                        .padding(.bottom, 4)
                    Text("最大連拍張數")
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text("""
                    越快的連拍速度代表性能越好，但若最大連拍張數不夠多的話，可能會有卡頓的狀況，使用上就得稍微留意了。
                    """)
                        .padding(.bottom, 12)
                }
                Group {
                    Text("5. 機身防震 (IBIS)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)

                    Text("""
                      機身五軸防震 (或稱為 IBIS, In-Body Image Stabilization) 是進階相機中會配置的功能，可以有效減低手持拍攝時產生的手抖和晃動，大大增加安全快門速度。Canon 的機身防震算是相對好的，搭配防手震鏡頭最高可以達到 8 級防震效果。
                    """)
                    Text("""
                      相機的五軸防震功能 (IBIS) 對於使用者來說是一個相當實用的技術。
                    """)
                    .padding(.bottom, 12)
                }
                
                Group {
                    Text("6. LCD 螢幕 & 電子觀景窗 (EVF)")
                        .font(.title2)
                        .fontWeight(.bold)

                    Text("LCD 螢幕")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding(.bottom, 4)
                    Text("""
                        LCD 螢幕分成下列三部分討論
                    """)
                    Text("""
                    (1)  螢幕能否翻轉：若螢幕是固定的，對於低或高角度拍攝來說非常不方便。現在主流皆為側翻、上翻或下翻螢幕，如果你有自拍需求 (如 Vlog)，就要注意螢幕是否可以 180 度翻轉，也得注意上翻螢幕可能會被你的外接麥克風給擋住
                    """)
                        .padding(.bottom, 4)
                    Text("""
                    (2)  螢幕尺寸和畫素：相機螢幕絕不可能像手機或電腦螢幕那樣優良，可以顯示足夠的色彩資訊或細節，因此基本上也不需要太過於挑剔。至於一般相機的螢幕尺寸普遍都在 3 吋左右、畫素則多為 150-200 萬左右
                    """)
                        .padding(.bottom, 4)
                    Text("""
                    (3)  是否為觸控螢幕：基本上現行的相機都是觸控螢幕，所以新手也都能快速上手操作
                    """)
                        .padding(.bottom, 4)
                    
                    Text("電子觀景窗 EVF")
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text("""
                      相機上面一個用來取景的目鏡 (也就是攝影師拍照時都會把眼睛湊近去看的視窗)，強光下，螢幕容易因為亮度不足而看不清楚，觀景窗在這時候就非常好用
                    """)
                        .padding(.bottom, 12)
                    Text("""
                    (1)  畫素和更新率：更高的畫素可以檢視更多的細節，而越高的更新率代表畫面越不會有延遲。一般相機更新率約每秒 60 幅 (60 fps, frame per second)，好一點的會來到 100 fps 甚至 120 fps。
                    """)
                        .padding(.bottom, 4)
                    Text("""
                    (2)  視野覆蓋率：就是「觀景窗看到的畫面」占「實際感光元件拍攝後的畫面」多少比例。一般無反相機都是 100% 的覆蓋率，也就是觀景窗看到多少畫面，拍下來的畫面就有多少；而單反的中低階相機則大多僅有 95% 左右，代表觀景窗看到的範圍比實際拍攝到的還要小，所以會造成構圖和實際拍攝結果有些許差距。
                    """)
                        .padding(.bottom, 4)
                    Text("""
                    (3)  放大倍率：可以簡單理解成「觀景窗看到的物體大小」和「肉眼實際看到的物體大小」兩者的比值。比如說 0.7x 代表肉眼看到 10 公分的物體，透過觀景窗來看僅有 7 公分大。放大倍率越接近 1 ，觀景窗看到的感覺就會越大越接近真實。
                    """)
                        .padding(.bottom, 4)
                    
                    Image("guide_1")
                        .resizable()
                        .scaledToFit()
                        .clipped()
                }
                Group {
                    Text("7. 電池續航力")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)

                    Text("""
                      無反相機因為 LCD 和電子觀景窗都是吃電的，因此在電池續航力上普遍不及單反相機。一般來說無反相機的電池續航力多在 300-400 張相片，好一點的則可以來到 600-700 張建議大家多準備一顆電池比較保險，免得相機沒電而錯過了美景。
                    """)
                    .padding(.bottom, 12)
                }
                
                // 使用 Bundle.main 來獲取項目中的 mp4 檔案
                AVPlayerView(videoURL: Bundle.main.url(forResource: "vedio", withExtension: "mp4")!)
                    .frame(height: 300) // 設置視頻播放器的高
                
            }


        }
    }
    
}

//
struct FujifilmList: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("介紹")) {
                    NavigationLink(destination: FujifilmType()) {
                        HStack {
                            Image("brand_fuli")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("介紹")
                        }
                    }
                }
                
                Section(header: Text("X系列")) {
                    NavigationLink(destination: FujifilmType1()) {
                        HStack {
                            Image("x_t5_image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X-T5")
                        }
                    }
                    NavigationLink(destination: FujifilmType2()) {
                        HStack {
                            Image("x_a7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X-A7")
                        }
                    }
                    NavigationLink(destination: FujifilmType3()) {
                        HStack {
                            Image("x_pro3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X-Pro3")
                        }
                    }
                    NavigationLink(destination: FujifilmType4()) {
                        HStack {
                            Image("x_e4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X-E4")
                        }
                    }
                }

                Section(header: Text("GFX系列")) {
                    NavigationLink(destination: FujifilmType5()) {
                        HStack {
                            Image("gfx100s_image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm GFX 100S")
                        }
                    }
                    NavigationLink(destination: FujifilmType6()) {
                        HStack {
                            Image("gfx-50s 2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm GFX 50S-2")
                        }
                    }
                }

                Section(header: Text("X100系列")) {
                    NavigationLink(destination: FujifilmType7()) {
                        HStack {
                            Image("x100v_image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X100V")
                        }
                    }
                    NavigationLink(destination: FujifilmType8()) {
                        HStack {
                            Image("x100f")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X100F")
                        }
                    }
                    NavigationLink(destination: FujifilmType9()) {
                        HStack {
                            Image("x100")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("Fujifilm X100")
                        }
                    }
                }
            }
            .navigationTitle("Fujifilm")
        }
    }
}

//分隔線


//分隔線

//Olympus
struct OlympusList: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("介紹")) {
                    NavigationLink(destination: OlympusType()) {
                        HStack {
                            Image("brand_olympus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("介紹")
                        }
                    }
                }
                
                Section(header: Text("OM-D 系列")) {
                    NavigationLink(destination: OlympusType1()) {
                        HStack {
                            Image("om-1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("OM SYSTEM OM-1")
                        }
                    }
                    NavigationLink(destination: OlympusType2()) {
                        HStack {
                            Image("om-5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipped()
                            Text("OM SYSTEM OM-5")
                        }
                    }
                    NavigationLink(destination: OlympusType3()) {
                        HStack {
                            Image("e-m1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipped()
                            Text("OM-D E-M1 Mark III")
                        }
                    }
                    NavigationLink(destination: OlympusType4()) {
                        HStack {
                            Image("e-m5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 95, height: 95)
                                .clipped()
                            Text("OM-D E-M5 Mark III")
                        }
                    }
                }
                
                Section(header: Text("PEN 系列")) {
                    NavigationLink(destination: OlympusType5()) {
                        HStack {
                            Image("e-p7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("OLYMPUS PEN E-P7")
                        }
                    }
                    NavigationLink(destination: OlympusType6()) {
                        HStack {
                            Image("e-pl10")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85, height: 85)
                                .clipped()
                            Text("OLYMPUS PEN E-PL10")
                        }
                    }
                }
            }
            .navigationTitle("Olympus")
        }
    }
}


#Preview {
    ContentView()
}
