//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType9: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x100")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                            .clipped()
                            .transition(.move(edge: .bottom).combined(with: .opacity))
                            .animation(.easeIn(duration: 2.0), value: isVisible) // 動畫效果
                    }
                }
                .onAppear {
                    withAnimation {
                        isVisible = true
                    }
                }
                
                Text("Fujifilm X100 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x100_pic_\(index)")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .clipped()
                        }
                    }
                    .padding()
                }
            
                
                //資料
                let specifications: [(String, String)] = [
                    ("型號", "FinePix X100"),
                    ("可記錄畫素", "1230萬畫素"),
                    ("感應器", "23.6mm x 15.8mm (APS-C) BSI CMOS"),
                    ("儲存媒介", "內建記憶體（約 39 MB）/ SD/SDHC/SDXC 記憶卡"),
                    ("靜止影像格式", "Exif 2.3 JPEG（壓縮），RAW（RAF格式）"),
                    ("動畫格式", "H.264 標準（MOV）"),
                    ("記錄像素 L", "(3:2) 4288 x 2848 / (16:9) 4288 x 2416"),
                    ("記錄像素 M", "(3:2) 3072 x 2048 / (16:9) 3072 x 1728"),
                    ("記錄像素 S", "(3:2) 2176 x 1448 / (16:9) 1920 x 1080"),
                    ("全景 L", "7680 x 2160（水平）"),
                    ("全景 M", "5120 x 2160（水平）"),
                    ("鏡頭名稱", "富士光學定焦鏡頭，F/2"),
                    ("鏡頭焦距", "f=23mm (35mm 格式相當於 35mm)"),
                    ("最大光圈", "F2.0"),
                    ("光圈", "F2.0 – F16（1/3 EV 級距）"),
                    ("焦距範圍", "一般約 80 cm 至無限遠；近拍模式約 10 cm - 2.0m"),
                    ("ISO感光度", "標準輸出：ISO 200-6400；延伸輸出：ISO100 或 12800"),
                    ("測光方式", "256區 TTL 測光"),
                    ("曝光控制", "程式自動曝光、快門優先 AE、光圈優先 AE、手動曝光"),
                    ("拍攝模式", "人像、風景、運動、夜景、煙火、夕陽、雪景"),
                    ("影像防模糊", "數位影像穩定"),
                    ("曝光補償", "–2 EV - +2 EV（1/3 EV 級距）"),
                    ("快門速度", "P 模式：1/4 秒 – 1/4,000 秒，其他模式：30 秒 – 1/4,000 秒"),
                    ("連拍", "最多連續拍攝 10 張 JPEG 或 8 張 RAW 影像"),
                    ("自動包圍曝光", "±1/3EV, ±2/3EV, ±1EV"),
                    ("對焦模式", "單次或連續自動對焦、手動對焦"),
                    ("白平衡", "自動場景辨識，色溫選擇"),
                    ("自拍", "約 2 秒或 10 秒"),
                    ("閃光燈", "自動閃光燈"),
                    ("觀景器", "反向式伽利略系統、電子觀景窗"),
                    ("LCD顯示屏", "2.8英吋，460,000 點"),
                    ("動畫拍攝", "1,280 × 720 (24 格/秒)"),
                    ("拍影功能", "自動紅眼修正"),
                    ("無線傳輸器", "無"),
                    ("端口", "USB 2.0 / HDMI Mini"),
                    ("電源", "NP-95 鋰離子電池"),
                    ("尺寸", "126.5 x 74.4 x 53.9 mm"),
                    ("重量", "約 405g（不包括配件）"),
                    ("操作溫度", "0°C - 40°C"),
                    ("操作濕度", "80% 或以下"),
                    ("一次充電拍攝的張數", "約 300 張"),
                    ("啟動時間", "約 2.2 秒"),
                    ("配件包括", "鋰離子電池 NP-95, 電池充電器 BC-65N等")
                ]
                
                ForEach(specifications, id: \.0) { spec in
                    HStack {
                        Text(spec.0)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(spec.1)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 5)
                }
                

                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.avi.com.tw/digital_camera/digital-camera-fujifilm/SaleOut_Camera_FujiFlim/specification/digital-camera-fujifilm-X100-2.htm")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X100")
    }
}

#Preview {
    FujifilmType9()
}
