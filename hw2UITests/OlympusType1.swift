//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct OlympusType1: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("om-1")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 180)
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
                
                Text("OM SYSTEM OM-1 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("om-1_pic_\(index)")
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
                    ("產品類型", "Micro 4/3標準可換鏡頭系統相機"),
                    ("記錄媒體類型", "【插槽1】SD, SDHC (UHS-I / II), SDXC(UHS-I / II)\n【插槽2】SD, SDHC (UHS-I / II), SDXC(UHS-I / II)"),
                    ("感光元件尺寸", "17.4 mm x 13.0 mm（Micro 4/3標準）"),
                    ("感光元件類型", "4/3\"背照層疊式Live MOS感光元件"),
                    ("像素數目", "有效像素：約2,040萬像素\n總像素：約2,290萬像素"),
                    ("比例", "4:3"),
                    ("防塵對策", "SSWF（Super Sonic Wave Filter）感光元件超音波防塵"),
                    ("鏡頭接環", "Micro 4/3標準接環"),
                    ("影像穩定系統類型", "內置5軸感光元件位移影像穩定系統"),
                    ("影像穩定模式", "4種（S-IS AUTO、S-IS1、S-IS2及S-IS3）及關閉"),
                    ("影像穩定能力", "補償幅度（只限機身）：7.0級\n當使用M.Zuiko Digital ED 12-40mm F2.8 PRO鏡頭\n焦距：40mm（相等於35mm相機標準：80mm）\n補償幅度（Sync IS同步影像穩定技術）：8.0級\n當使用M.Zuiko Digital ED 150-400mm F4.5 TC1.25x IS PRO鏡頭\n焦距：150mm（相等於35mm相機標準：300mm）、IS於半按快門時啟動：關閉、連拍模式：高"),
                    ("5軸Sync IS同步影像穩定技術", "提供\n當使用內置光學影像穩定器的M.Zuiko Digital鏡頭"),
                    ("焦距調校", "11個設定：可以儲存10支鏡頭的設定\n鏡頭如沒有通訊功能亦可以被註冊"),
                    ("相片記錄格式", "DCF2.0, Exif2.31"),
                    ("相片檔案格式", "RAW（12-bit無失真壓縮）、RAW + JPEG、JPEG"),
                    ("相片記錄影像尺寸", "【RAW】5184 x 3888像素\n【JPEG】5184 x 3888像素至1024 x 768像素"),
                    ("雙記憶卡插槽設定", "標準、自動切換、雙卡獨立儲存、雙卡同步儲存"),
                    ("開新資料夾及指定儲存至個別資料夾", "提供"),
                    ("觀景器類型", "視平式OLED電子觀景器，有效像素約576萬"),
                    ("視野率／倍率", "約100%／約1.48x - 1.65x（-1m-1，50mm鏡頭、焦點為無限遠）"),
                    ("視點／內置屈光度矯正", "約21mm（-1m-1，距離由後組鏡片量度計算）／-4 - +2m-1"),
                    ("格線顯示", "關閉、一般格線、黃金分割格線、儀錶靶格線、對角線、影片專用格線\n可選擇格線顏色"),
                    ("電子水平器", "2軸水平器（水平／垂直）"),
                    ("觀景器顯示風格", "3種"),
                    ("亮度控制／色溫控制", "自動光暗度調校（電子觀景器自動調校亮度）／±7級手動亮度設定／±7級手動色溫設定，可以在A-B／G-M軸調校"),
                    ("S-OVF（模擬光學觀景器）", "提供"),
                    ("眼罩", "可額外選配EP-18眼罩（隨OM-1已附有一個）")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.yuanyu.tw/product/dslr/om1/spec.php")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("OM SYSTEM OM-1")
    }
}

#Preview {
    OlympusType1()
}
