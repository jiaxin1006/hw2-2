//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType4: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x_e4")
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
                
                Text("Fujifilm X-E4 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x_e4_pic_\(index)")
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
                    ("型號", "FUJIFILM X-E4"),
                    ("有效畫素數", "2610萬畫素"),
                    ("影像感應器", "帶有原色濾鏡的23.6mm×15.6mm (APS-C)X-Trans CMOS 4"),
                    ("感應器清潔系統", "超音波振動"),
                    ("記憶卡", "SD記憶卡（最高2GB）/SDHC記憶卡（最高32GB）/SDXC記憶卡（最高2TB），支援UHS-I"),
                    ("檔案格式", "靜止影像：DCF2.0, JPEG : Exif Ver.2.32, RAW : 14bit (RAF 原始格式), TIFF : 8bit/16bit RGB"),
                    ("影像畫素數", "L: (3:2) 6240×4160 / (16:9) 6240×3512 / (1:1) 4160×4160\nM: (3:2) 4416×2944 / (16:9) 4416×2488 / (1:1) 2944×2944\nS: (3:2) 3120×2080 / (16:9) 3120×1760 / (1:1) 2080×2080"),
                    ("鏡頭卡口", "FUJIFILM X卡口"),
                    ("影像處理引擎", "X-Processor4"),
                    ("感光度", "靜態影像：ISO160-12800 (擴展ISO80-51200), 動態影像：ISO160-12800 (擴展ISO25600)"),
                    ("曝光控制", "TTL 256區測光，多重測光/點測光/平均測光/中央重點測光"),
                    ("曝光模式", "P（程式AE）/ A（光圈優先AE）/S（快門速度優先AE）/M（手動曝光）"),
                    ("曝光補償", "-5.0EV – +5.0EV，1 / 3階 EV檔（影片：-2.0EV – +2.0EV）"),
                    ("快門類型", "焦平面快門"),
                    ("快門速度", "機械快門：4秒 – 1/4000秒, 電子快門：4秒 – 1/32000秒, 電子機械快門：4秒 – 1/32000秒"),
                    ("閃光同步快門速度", "1/180秒或更慢"),
                    ("連拍", "最高30fps（電子快門），連拍張數依設定不同"),
                    ("自動包圍式曝光", "AE自動包圍式曝光 (幀數：2, 3, 5, 7, 9；階數：1/3EV最高到±3EV)"),
                    ("白平衡", "自動(白平衡優先/自動/環境優先)/自訂1-3/色溫選擇(2500K~10000K)"),
                    ("對焦", "單幅AF / 連續AF / MF，智慧高速AF"),
                    ("LCD螢幕", "3.0英吋，長寬比為3:2，約162萬畫素，可觸控彩色LCD顯示螢幕"),
                    ("影片拍攝", "檔案格式：MOV, MP4；DCI4K最高29.97p, Full HD最高59.94p"),
                    ("無線傳輸器", "IEEE 802.11b/g/n, 藍牙4.2"),
                    ("電源供應", "NP-W126S鋰離子電池"),
                    ("靜態照片的電池續航力", "約460幅（安裝XF35mmF1.4 R）"),
                    ("尺寸", "121.3mm (W) × 72.9mm (H) × 32.7mm (D)"),
                    ("重量", "約364g（包含電池和記憶卡）"),
                    ("包含配件", "鋰電池NP-W126S、USB充電線(Type A-C)、麥克風轉接頭、肩帶環、機身蓋、說明書、保固卡")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://myfuji.com.tw/product/fujifilm-x-e4-單機身/")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X-E4")
    }
}

#Preview {
    FujifilmType4()
}
