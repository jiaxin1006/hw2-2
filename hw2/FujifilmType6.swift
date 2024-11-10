//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType6: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("gfx-50s 2")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 250)
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
                
                Text("Fujifilm GFX 50S-2 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("gfx-50s 2_pic_\(index)")
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
                    ("鏡頭卡口", "FUJIFILM G 卡口"),
                    ("影像感光元件", "43.8mm×32.9mm 具有原色濾鏡的拜耳陣列"),
                    ("有效畫素數", "5140萬畫素"),
                    ("感光元件清潔系統", "超音波振動"),
                    ("影像處理引擎", "X-Processor 4"),
                    ("存儲媒介", "SD記憶卡（-2G）/ SDHC記憶卡（-32G） / SDXC 記憶卡 (-2TB) / UHS-I / UHS-II / 影片速度等級V90 *1"),
                    ("靜止影像文件格式", "DCF 相容相機文件系統設計規則 (DCF2.0)"),
                    ("JPEG", "Exif Ver.2.32 *2"),
                    ("RAW", "14bit RAW（RAF原始格式）"),
                    ("TIFF", "8bit / 16bit RGB（僅限相機內原始轉換）"),
                    ("錄製畫素數", "［L］〈4:3〉 8256 x 6192 〈3:2〉 8256 x 5504 〈16:9〉 8256 x 4640 〈1:1〉 6192 x 6192 〈65:24〉 8256 x 3048 〈5:4〉 7744 x 6192 〈7:6〉 7232 x 6192"),
                    ("感光度", "靜態影像: 標準輸出 ISO100~12800, 可擴展至 ISO50 / ISO25600 / ISO51200 / ISO102400"),
                    ("影片", "標準輸出: AUTO / ISO200～6400 (1/3 檔)"),
                    ("曝光控制", "TTL 256區測光/多重測光/點測光/平均測光/中央重點測光"),
                    ("曝光模式", "P（程序AE）/ A（光圈優先AE）/ S（快門速度優先AE）/ M（手動曝光）"),
                    ("曝光補償", "靜態影像: -5.0EV~+5.0EV 1/3EV 檔, 影片: -2.0EV~+2.0EV 1/3EV 檔"),
                    ("影像防震", "防震結構：感光元件移位方式5軸補償, 補償效果：6.5檔"),
                    ("快門類型", "焦平面快門"),
                    ("快門速度", "機械快門: P檔 4秒 - 1/4000秒, A檔 30秒-1/4000秒, S/M檔 60分鐘-1/4000秒"),
                    ("影片", "FHD: 1/4000秒至1/24秒"),
                    ("閃光燈同步速度", "1/125秒或更慢"),
                    ("連拍", "CH 電子前簾快門 約2.2張/秒 (JPEG:無限, 壓縮 RAW:無限)"),
                    ("驅動模式", "自動包圍式曝光 2至9張, ISO包圍式曝光, 白平衡包圍式曝光"),
                    ("多重曝光", "是 (最多9 張)"),
                    ("對焦模式", "單次AF / 連續 AF / MF"),
                    ("人臉/人眼辨識", "是"),
                    ("觀景器", "0.5英寸，約369萬畫素OLED彩色觀景器"),
                    ("LCD顯示螢幕", "3.2英寸可翻折式觸摸彩色LCD顯示螢幕"),
                    ("影片文件格式", "MOV: MPEG-4 AVC / H.264"),
                    ("影片拍攝時間", "Full HD最高120分鐘"),
                    ("軟片模擬模式", "19種模式，包括PROVIA, Velvia, ASTIA等"),
                    ("無線傳輸", "IEEE802.11b/g/n（標準無線協議）"),
                    ("藍牙", "藍牙版本4.2"),
                    ("端子", "USB Type-C (USB3.2 Gen1x1), HDMI D型, 麥克風接口等"),
                    ("電池", "NP-W235鋰電池, 靜態影像續航：約455幅"),
                    ("外型尺寸", "寬度150.0mm, 高度104.2mm, 厚度87.2mm"),
                    ("重量", "約900g（含電池和記憶卡）"),
                    ("工作環境", "工作溫度 -10°C～+40°C, 工作濕度 10% - 80%"),
                    ("啟動時間", "約0.4秒"),
                    ("包含的配件", "鋰離子電池, 交流電源轉接頭, USB數據線, 肩背帶等")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.fujifilm.com.tw/personal/digitalcamera/gfx50s-ii/specifications/index.html")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm GFX 50S-2")
    }
}

#Preview {
    FujifilmType6()
}
