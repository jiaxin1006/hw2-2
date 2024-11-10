//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType8: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x100f")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 280)
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
                
                Text("Fujifilm X100F 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x100f_pic_\(index)")
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
                    ("型號", "FUJIFILM X100F"),
                    ("有效像素", "2,430 萬像素"),
                    ("感應器", "23.6mm x 15.6mm(APS-C)X-Trans CMOS III 連原始色彩濾鏡"),
                    ("儲存媒體", "SD卡(-2G) / SDHC卡(-32G) / SDXC卡(-256G) UHS-I"),
                    ("靜止影像格式", "JPEG (Exif Ver.2.3), RAW: 14bit RAW(RAF 原始格式), RAW+JPEG"),
                    ("動畫格式", "MOV (MPEG-4 AVC / H.264, 音頻: 線性 PCM / 立體聲 48KHz 記錄)"),
                    ("記錄像素 L", "(3:2) 6000 x 4000 / (16:9) 6000 x 3376 / (1:1) 4000 x 4000"),
                    ("記錄像素 M", "(3:2) 4240 x 2832 / (16:9) 4240 x 2384 / (1:1) 2832 x 2832"),
                    ("記錄像素 S", "(3:2) 3008 x 2000 / (16:9) 3008 x 1688 / (1:1) 2000 x 2000"),
                    ("全景 L", "2160 x 9600 (Horizontal: 9600 x 1440)"),
                    ("全景 M", "2160 x 6400 (Horizontal: 6400 x 1440)"),
                    ("鏡頭名稱", "FUJINON 定焦鏡頭"),
                    ("鏡頭焦距", "f=23mm (35mm 格式相當於: 35mm)"),
                    ("最大光圈", "F2"),
                    ("鏡頭結構", "6 組 8 片 (附帶1片非球面玻璃鏡片)"),
                    ("光圈", "F2 - F16 (1/3EV 階)"),
                    ("焦距", "約10cm 至無窮遠"),
                    ("感光度", "標準輸出感光度: AUTO1 / AUTO2 / AUTO3(up to ISO12800) / ISO200 to 12800(1/3EV step)"),
                    ("擴展輸出感光度", "ISO100 / 25600 / 51200"),
                    ("曝光控制", "區測光,多重測光 / 點測光 / 平均測光 / 中央重點測光"),
                    ("曝光模式", "P(程式AE) / A(光圈優先AE) / S(快門速度有限AE) / M(手動曝光)"),
                    ("曝光補償", "-5.0EV - +5.0EV, 1/3EV 級"),
                    ("快門速度", "機械快門: 4 秒 至 1/8000 秒; 電子快門: 30 秒 至 1/32000 秒"),
                    ("連拍", "約 8.0 fps (JPEG: 60 幅無失真壓縮)"),
                    ("自動包圍式曝光", "±2EV / ±5/3EV / ±4/3EV / ±1EV / ±2/3EV / ±1/3EV"),
                    ("對焦模式", "單點自動對焦 / 連續自動對焦 / 手動對焦"),
                    ("白平衡", "自動場景識別 / 定制 / 色溫選擇 / 預設"),
                    ("自拍", "10秒 / 2延遲"),
                    ("間隔定時拍攝", "有 (設定 : 間隔, 次數, 開始時間)"),
                    ("閃光燈", "自動閃光燈 (超智能閃光燈)"),
                    ("觀景器", "光學觀景器 逆向式伽利略觀景器"),
                    ("LCD顯示屏", "3.0英吋、約104萬畫素、TFT彩色LCD螢幕"),
                    ("動畫拍攝", "全高清(1920x1080) 連續拍攝最長約14分鐘"),
                    ("拍影功能", "臉部/眼部檢測 AF、自動去除紅眼"),
                    ("無線傳輸器", "IEEE 802.11b/g/n"),
                    ("端口", "USB2.0 / HDMI micro 插座"),
                    ("電源", "NP-W126S 鋰離子電池"),
                    ("尺寸", "126.5mm x 74.8mm x 52.4mm"),
                    ("重量", "約469g (包括電池和記憶卡)"),
                    ("操作溫度", "0°C - 40°C"),
                    ("操作濕度", "10 - 80% (無冷凝)"),
                    ("一次充電拍攝動畫的時間", "連續動畫：約110分鐘"),
                    ("啟動時間", "約0.5秒"),
                    ("配件包括", "鋰電子電池 NP-W126S, 電池充電器 BC-W126等")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.fujifilm.com.hk/products/digital_cameras/x/fujifilm_x100f/specifications/")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X100F")
    }
}

#Preview {
    FujifilmType8()
}
