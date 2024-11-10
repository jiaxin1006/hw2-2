//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType1: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x_t5_image")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 280)
                            .clipped()
                            .transition(.move(edge: .bottom).combined(with: .opacity))
                            .animation(.easeIn(duration: 2.0), value: isVisible) // 动画效果
                    }
                }
                .onAppear {
                    withAnimation {
                        isVisible = true
                    }
                }
                
                Text("FUJIFILM X-T5 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) { // 隱藏滾動指示器 
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x_t5_pic_\(index)")
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
                    ("機型", "FUJIFILM X-T5"),
                    ("鏡頭卡口", "FUJIFILM X卡口"),
                    ("影像感光元件", "搭載原色濾鏡的 23.5mm x 15.6mm (APS-C) X-Trans CMOS 5 HR"),
                    ("有效畫素數", "4020萬畫素"),
                    ("感光元件清潔系統", "超音波振動"),
                    ("影像處理引擎", "X-Processor 5"),
                    ("儲存媒介", "SD 卡 (-2GB) / SDHC 卡 (-32GB) / SDXC 卡 (-2TB) / UHS-I / UHS-II / 影片速度等級 V90"),
                    ("靜止影像檔案格式", "DCF, JPEG, HEIF, RAW, TIFF"),
                    ("記錄畫素數 L", "〈4:3〉 6864 x 5152 〈3:2〉 7728 x 5152"),
                    ("記錄畫素數 M", "〈4:3〉 4864 x 3648 〈3:2〉 5472 x 3648 〈16:9〉 5472 x 3080 〈1:1〉 3648 x 3648 〈5:4〉 4560 x 3648"),
                    ("記錄畫素數 S", "〈4:3〉 3464 x 2592 〈3:2〉 3888 x 2592 〈16:9〉 3888 x 2184 〈1:1〉 2592 x 2592 〈5:4〉 3264 x 2592"),
                    ("全景 L", "〈垂直〉 9600 x 2160 〈水平〉 9600 x 1440"),
                    ("全景 M", "〈垂直〉 6400 x 2160 〈水平〉 6400 x 1440"),
                    ("數位變焦轉換", "2.0x / 1.4x / OFF"),
                    ("感光度 (靜態影像)", "標準輸出: AUTO1 / AUTO2 / AUTO3 / ISO125-12800"),
                    ("感光度 (擴展輸出)", "ISO64 / ISO80 / ISO100 / ISO25600 / ISO51200"),
                    ("曝光控制", "TTL 256區測光 / 多重測光/點測光 / 平均測光 / 中央重點測光"),
                    ("曝光模式", "P (程序AE) / A (光圈優先AE) / S (快門優先AE) / M (手動曝光)"),
                    ("快門速度 (機械快門)", "P 模式: 30秒至1/8000秒"),
                    ("連拍速度", "CH 電子快門20張/秒 (JPEG 168 張)"),
                    ("液晶螢幕", "3.0英吋可變角度彩色液晶觸控螢幕"),
                    ("電池續航", "省電模式: 約 740 張"),
                    ("外型尺寸", "寬度: 129.5mm / 高度: 91mm / 厚度: 63.8mm"),
                    ("重量", "約 557g (含電池和記憶卡)"),
                    ("工作環境", "工作溫度: -10℃ - +40℃")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.fujifilm.com.tw/personal/digitalcamera/x-t5/specifications/index.html")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X-T5")
    }
}

#Preview {
    FujifilmType1()
}
