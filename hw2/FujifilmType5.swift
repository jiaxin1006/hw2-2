//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType5: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("gfx100s_image")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 185)
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
                
                Text("Fujifilm GFX 100S 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("gfx100s_pic_\(index)")
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
                    ("型號名稱", "富士 GFX100S II"),
                    ("鏡頭卡口", "富士G卡口"),
                    ("影像感光元件", "43.8mm×32.9mm GFX 102MP CMOS II 帶原色濾鏡"),
                    ("有效畫素數", "1.02億畫素"),
                    ("感光元件清潔系統", "超音波振動"),
                    ("影像處理引擎", "X 處理器 5"),
                    ("儲存媒體", "SD 卡 (-2GB), SDHC 卡 (-32GB), SDXC 卡 (-2TB), UHS-I, UHS-II, 影片速度等級 V90, 固態硬碟（-2TB）"),
                    ("靜止影像的檔案格式", "DCF2.0, JPEG Exif 2.32, 海伊夫 4:2:2 10 位, RAW, TIFF"),
                    ("記錄畫素數 [大]", "43：11648×8736, 32：11648×7768, 16:9：11648×6552, 1:1：8736×8736, 65:24：11648×4304, 5:4：10928×8736"),
                    ("靈敏度 靜止影像", "ISO80~12800 (1/3階), 可擴充至 ISO40, ISO25600, ISO51200, ISO102400"),
                    ("曝光控制", "TTL 256 區測光, 多點平均, 中央重點測光"),
                    ("曝光模式", "P, A, S, M"),
                    ("影像防震", "5 軸補償, 8.0 階, 數位影像穩定 (影片模式)"),
                    ("快門類型", "焦平面快門, 機械快門, 電子快門"),
                    ("連拍", "最高 7.0 張/秒"),
                    ("驅動方式", "AE 包圍曝光, 影片模擬包圍曝光, 動態範圍包圍, ISO 包圍, 白平衡包圍, 對焦包圍"),
                    ("多重曝光", "最多 9 格, 加法, 平均, 明亮, 黑暗"),
                    ("對焦模式", "單一自動對焦, 連續自動對焦, 手動對焦"),
                    ("閃光模式", "TTL 自動, 標準, 慢速同步, 手動"),
                    ("觀景窗", "0.5 吋 OLED 彩色觀景窗, 576萬點"),
                    ("LCD 螢幕", "3.2 吋 三向傾斜 彩色 LCD 觸控螢幕"),
                    ("影片錄製格式", "MOV (Apple ProRes 422 HQ/422/422 LT, HEVC/H.265), MP4 (MPEG-4 AVC/H.264)"),
                    ("影片分辨率", "DCI4K 4096x2160, 4K 3840x2160, FullHD 1920x1080"),
                    ("軟片模擬模式", "PROVIA, Velvia, ASTIA, Classic Chrome, REALA ACE, PRO Neg.Hi, PRO Neg.Std, Classic Neg., Nostalgic Neg., ETERNA, ETERNA BLEACH BYPASS, ACROS"),
                    ("無線傳輸器", "IEEE802.11a/b/g/n/ac"),
                    ("藍牙", "藍牙 4.2"),
                    ("端子", "USB Type-C, HDMI D 型, 麥克風和耳機接頭, 熱靴"),
                    ("電池", "NP-W235 鋰離子電池, 靜態影像: 約530張, 4K影片: 約80分鐘"),
                    ("外型尺寸", "寬150.0mm, 高104.2mm, 深87.2mm"),
                    ("重量", "約883克 (含電池和記憶卡), 約802克 (不含電池和記憶卡)"),
                    ("運作環境", "工作溫度 -10℃~+40℃, 工作濕度 10%~80%")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.fujifilm.com.tw/personal/digitalcamera/gfx100s-ii/specifications/index.html")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm GFX 100S")
    }
}

#Preview {
    FujifilmType5()
}
