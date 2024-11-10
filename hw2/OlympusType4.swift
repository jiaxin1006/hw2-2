//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct OlympusType4: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("e-m5")
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
                
                Text("OM-D E-M5 Mark III 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("em5_pic_\(index)")
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
                    ("記錄媒體類型", "SD, SDHC, SDXC\n兼容UHS-I、UHS-II"),
                    ("感光元件尺寸", "17.4 mm (H) x 13.0 mm (V)"),
                    ("鏡頭接環", "Micro 4/3標準接環"),
                    ("產品類型", "4/3\" Live MOS感光元件"),
                    ("有效像素", "2,040萬像素"),
                    ("比例", "1.33（4:3）"),
                    ("防塵對策", "SSWF（Super Sonic Wave Filter）感光元件超音波防塵"),
                    ("相片記錄格式", "DCF2.0, Exif2.31"),
                    ("相片檔案格式", "RAW（12-bit無失真壓縮）、RAW + JPEG、JPEG"),
                    ("相片記錄影像尺寸", "[RAW] 5184 x 3888像素\n[JPEG] 5184 x 3888像素至1024 x 768像素"),
                    ("類型", "3.0吋多角度顯示屏"),
                    ("解析度", "約104萬像素、3:2寬比例、電容式觸控顯示屏"),
                    ("角度調校", "提供（當在自拍模式時，顯示屏會提供水平翻轉的鏡像畫面）"),
                    ("亮度控制", "±7級"),
                    ("色溫控制", "±7級"),
                    ("顏色屬性", "Vivid（鮮艷）／Natural（自然）"),
                    ("自動對焦系統", "高速Imager AF系統，混合使用相位檢測和對比度式自動對焦點"),
                    ("對焦點選擇模式", "121點十字型相位檢測自動對焦點及121點對比度式自動對焦點"),
                    ("對焦模式", "單次自動對焦（S-AF）、連續自動對焦（C-AF）、手動對焦（MF）、S-AF + MF、焦點追蹤（C-AF + TR）、預設手動對焦（Preset MF）"),
                    ("自動對焦表現", "C-AF靈敏度（5級），自動對焦掃描器（3種方式），C-AF中心優先，C-AF中心開始"),
                    ("自動對焦限制器", "可指定至自定按鈕內啟動或關閉，最多可儲存3個距離設定"),
                    ("自動對焦目標觸控板", "雙擊機背觸控式顯示屏來啟動／關閉自動對焦功能"),
                    ("放大自動對焦框", "可選擇放大倍率：3倍、5倍、7倍、10倍及14倍"),
                    ("超精細自動對焦", "可使用對比度式自動對焦（接上Micro 4/3鏡頭）"),
                    ("臉孔對焦", "提供眼部檢測自動對焦模式：關閉、最近眼睛優先、右眼優先、左眼優先"),
                    ("輔助手動對焦", "轉動對焦環後（於S-AF+MF或MF模式），Live View畫面將會放大或啟動峰值對焦功能"),
                    ("峰值對焦功能", "可使用指定按鈕後或轉動對焦環後，出現峰值顯示，並可設定峰值色彩及顯示強度"),
                    ("焦點調整", "統一調整設定、個別鏡頭設定（只限使用相位檢測自動對焦鏡頭）"),
                    ("自動對焦照明燈", "提供")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.yuanyu.tw/product/dslr/em5mk3/spec.php")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("OM-D E-M5 Mark III")
    }
}

#Preview {
    OlympusType4()
}
