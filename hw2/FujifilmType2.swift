//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType2: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x_a7")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
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
                
                Text("Fujifilm X-A7 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x_a7_pic_\(index)")
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
                    ("型號", "FUJIFILM X-A7"),
                    ("產品編號", "FF190001"),
                    ("有效像素（3:2）", "約 2420 萬"),
                    ("圖像傳感器", "23.5 mm × 15.7 mm（APS-C 格式），CMOS（互補性金屬氧化物半導體件）正方像素圖像傳感器，並帶主色彩濾鏡"),
                    ("儲存媒介", "推薦使用 Fujifilm SD/SDHC/SDXC 儲存卡"),
                    ("儲存卡插槽", "SD 儲存卡插槽（UHS-1）"),
                    ("檔案系統", "遵循相機檔案系統設計規則（DCF）、Exif 2.3 以及數位打印預約格式（DPOF）"),
                    ("檔案格式", "靜態照片：Exif 2.3 JPEG（壓縮）；RAW（原始 RAF 格式，需要特定軟件）；RAW+JPEG 可用\n動畫：H.264 標準（帶有立體聲，MPEG-4）"),
                    ("圖像尺寸", "O4:3 （5328 × 4000）\nO3:2 （6000 × 4000）\nO16:9 （6000 × 3376）\nO1:1 （4000 × 4000）\nP4:3 （3712 × 2784）\nP3:2 （4240 × 2832）\nP16:9 （4240 × 2384）\nP1:1 （2832 × 2832）\nQ4:3 （2656 × 1992）\nQ3:2 （3008 × 2000）\nQ16:9 （3008 × 1688）\nQ1:1 （2000 × 2000）\nRAW（6000 × 4000）\nO全景照片：垂直（2160 × 9600)/橫向（9600 × 1440）\nP全景照片：垂直（2160 × 6400)/橫向（6400 × 1440）"),
                    ("鏡頭卡口", "FUJIFILM X 卡口"),
                    ("感光度", "靜態照片：標準輸出感光度相當於 ISO 200–12800（以 1/3 EV 為步長）；自動；擴展輸出感光度相當於 ISO 100、25600 或 51200\n動畫：標準輸出感光度相當於 ISO 400–6400（以 1/3 EV 為步長）；自動"),
                    ("測光", "256 區 TTL 測光；多重、點、平均"),
                    ("曝光控制", "程序自動曝光（帶程序切換）、快門優先 AE、光圈優先 AE 及手動曝光"),
                    ("曝光補償", "靜態照片：–5 EV 至 +5 EV；以 1/3 EV 為步長\n動畫：–2 EV 至 +2 EV；以 1/3 EV 為步長"),
                    ("快門速度", "機械快門\n模式 P：4 秒至 1/4000 秒\n其他模式：30 秒至 1/4000 秒\nB 門：最長 60 分鐘\n電子快門\n模式 P：4 秒至 1/32000 秒\n其他模式：30 秒至 1/32000 秒\n機械+電子\n模式 P：4 秒至 1/32000 秒\n其他模式：30 秒至 1/32000 秒\nB 門：最長 60 分鐘"),
                    ("連拍（16:9）", "模式 畫面速率（fps） 每次連拍的張數\nJ 6.0 最多約 10 張\nO 3.0 最多約 50 張"),
                    ("對焦", "對焦區域選擇：單點、區、廣域/跟踪\n模式：單次或連續自動對焦、通過對焦圈進行的手動對焦、 AF+MF\n自動對焦系統：智能混合自動對焦（TTL 對比檢測自動對焦/相位檢測自動對焦），帶 AF 輔助燈"),
                    ("白平衡", "自訂、色溫選擇、自動、直射陽光、陰天、日光熒光燈、暖白熒光燈、冷白熒光燈、白熾燈、潛水"),
                    ("自拍", "關、2 秒、10 秒、臉部自動快門、微笑、朋友、組"),
                    ("閃光燈", "類型：手動彈出式閃光燈組件\n閃光指數：約為 5.7（ISO 200，m）、4（ISO 100，m）\n閃光燈模式：自動、強制閃光、強制不閃光、慢同步、後簾同步、命令（紅眼修正關）；自動+紅眼修正、強制閃光+紅眼修正、強制不閃光、慢同步+紅眼修正、後簾同步+紅眼修正、命令（紅眼修正開）"),
                    ("熱靴", "配件熱靴帶 TTL 接點"),
                    ("同步接點", "X 接點；支持高達 1/180 秒的同步速度"),
                    ("取景器", "—"),
                    ("LCD 顯示屏", "固定式 3.5 英寸/8.9 cm，2760000 點彩色觸控式 LCD 顯示屏，可變角度 LCD 顯示屏"),
                    ("動畫", "帶立體聲的動畫\nV：29.97P、25P、24P、23.98P\nW：59.94P、50P、29.97P、25P、24P、23.98P\nn：59.94P、50P、29.97P、25P、24P、23.98P\nh：59.94P、50P、29.97P、25P、24P、23.98P\nm：59.94P、50P、29.97P、25P、24P、23.98P\n無聲 HD 高速動畫\n1.6× a59.94P F100P\n2× a50P F100P\n3.3× a29.97P F100P\n4× a25P F100P")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://fujifilm-dsc.com/zhs/manual/x-a7/technical_notes/spec/index.html")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X-A7")
    }
}

#Preview {
    FujifilmType2()
}
