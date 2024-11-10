//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType3: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x_pro3")
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
                
                Text("Fujifilm X-Pro3 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x_pro3_pic_\(index)")
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
                    ("機型名稱", "FUJIFILM X-Pro3"),
                    ("有效像素數", "2610萬像素"),
                    ("圖像傳感器", "帶原色濾鏡的23.5mm×15.6mm(APS-C) X-Trans CMOS 4"),
                    ("傳感器清潔系統", "超聲波振動"),
                    ("存儲介質", "SD存儲卡 (~2GB) / SDHC存儲卡 (~32GB) / SDXC存儲卡(~512GB)\nUHS-I / UHS-II / 視頻速度級別 V30"),
                    ("靜態圖像文件格式", "JPEG: Exif Ver.2.3, RAW: 14bit RAW (RAF原始格式) / RAW+JPEG"),
                    ("記錄像素數", "[L]<3:2> 6240 X 4160 <16:9> 6240 X 3512 <1:1> 4160 X 4160\n[M]<3:2> 4416 X 2944 <16:9> 4416 X 2488 <1:1> 2944 X 2944\n[S]<3:2> 3120 X 2080 <16:9> 3120 X 1760 <1:1> 2080 X 2080"),
                    ("鏡頭卡口", "FUJIFILM X卡口"),
                    ("感光度", "標準輸出: AUTO1 / AUTO2 / AUTO3 / ISO160~12800 (1/3檔)\n擴展輸出: ISO80 / 100 / 125 / 25600 / 51200"),
                    ("曝光控制", "TTL 256區測光，多重測光 / 點測光 / 平均測光 / 中央重點測光"),
                    ("曝光模式", "P（程序優先）/ A（光圈優先）/ S（快門優先）/ M（手動曝光）"),
                    ("曝光補償", "-5.0EV~+5.0EV 1/3EV步長（視頻：-2.0EV~+2.0EV）"),
                    ("快門類型", "焦平面快門"),
                    ("快門速度", "機械快門:\nP模式: 4秒至1/8000秒\nA模式: 30秒至1/8000秒\nS/M模式: 15分鐘至1/8000秒\nB門: 最長60分鐘\n電子快門:\nP模式：4秒至1/32000秒\nA模式：30秒至1/32000秒\nS/M模式：15分鐘至1/32000秒\nB門模式：1秒固定"),
                    ("閃光燈的同步快門速度", "1/250秒或更慢"),
                    ("連拍", "約11幅/秒（JPEG：145幅；無損壓縮RAW：42幅；未壓縮RAW：36幅）\n約8.0幀/秒（JPEG：200幅；無損壓縮RAW：46幅；未壓縮RAW：39幅）"),
                    ("自動包圍式曝光", "AE自動包圍式曝光（最多±3EV步長）"),
                    ("對焦", "模式: 單幅AF / 連續AF / MF\n類型: 智能高速AF"),
                    ("白平衡", "自動場景識別 / 自定義1-3 / 色溫選擇(2500K-10000K)"),
                    ("自拍定時器", "10秒/ 2秒"),
                    ("閃光燈模式", "TTL模式（自動閃光、標準、慢同步）、手動、多重、關閉"),
                    ("熱靴", "有（兼容專用TTL閃光燈）"),
                    ("取景器", "帶電子顯示屏的光學取景器\n放大倍率約0.52倍"),
                    ("LCD 液晶顯示屏", "3.0英寸，長寬比3:2，約180度翻折162萬像素的觸摸彩色液晶顯示屏"),
                    ("視頻錄製", "格式：MOV、壓縮：MPEG-4 AVC/H.264"),
                    ("可錄製時長", "[DCI 4K（4096×2160）]：最多約15分鐘"),
                    ("電池", "NP-W126S鋰離子電池（附帶）"),
                    ("外型尺寸", "（寬）140.5mm ×（高）82.8mm ×（厚）46.1mm"),
                    ("重量", "約497g（包括電池和SD存儲卡）"),
                    ("工作環境", "工作溫度：-10°C~+40°C\n工作濕度：10%~80%（無冷凝）"),
                    ("包含的配件", "鋰離子電池NP-W126S、肩背帶、機身蓋、帶夾、保護蓋、夾子安裝工具、熱靴蓋、包裹布")

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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://fujifilm-x.com/zh-cn/products/cameras/x-pro3/specifications/")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X-Pro3")
    }
}

#Preview {
    FujifilmType3()
}
