//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct OlympusType6: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("e-pl10")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 140)
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
                
                Text("OM PEN E-PL10 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("e-pl10_pic_\(index)")
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
                    ("記錄媒體類型", "SD記憶卡（SDHC、SDXC，兼容UHS-I）"),
                    ("感光元件尺寸", "17.3 mm x 13.0 mm"),
                    ("鏡頭接環", "Micro 4/3標準接環"),
                    ("感光元件類型", "4/3\" Live MOS感光元件"),
                    ("有效像素", "有效像素：1,610萬像素"),
                    ("總像素", "總像素：1,720萬像素"),
                    ("比例", "比例：1.33（4:3）"),
                    ("防塵對策", "SSWF（Super Sonic Wave Filter）感光元件超音波防塵"),
                    ("相片記錄格式", "DCF 2.0, Exif 2.3"),
                    ("相片檔案格式", "RAW（12-bit無失真壓縮）、RAW + JPEG、JPEG"),
                    ("相片記錄影像尺寸", "[RAW] 4608 x 3456像素\n[JPEG] 4608 x 3456像素至1280 x 960像素"),
                    ("影像穩定系統", "內置3軸感光元件位移影像穩定系統"),
                    ("補償方式", "偏航、俯仰、旋轉"),
                    ("防震能力", "3.5級"),
                    ("使用鏡頭", "M.Zuiko Digital ED 14-42mm F3.5-5.6 EZ"),
                    ("焦距", "42mm（相等於35mm相機標準：84mm）"),
                    ("CIPA標準", "根據CIPA標準，補償方式：2軸（偏航、俯仰）"),
                    ("實時顯示", "約100%畫面檢視"),
                    ("曝光補償預覽", "提供"),
                    ("白平衡調整預覽", "提供"),
                    ("灰階自動預覽", "提供"),
                    ("臉孔偵測預覽", "最多8張臉孔"),
                    ("格線", "提供"),
                    ("放大顯示", "3X、5X、7X、10X及14X"),
                    ("顯示模式", "一般、亮度顯示、高光或暗位警示、電子水平器及關閉（僅限影像）"),
                    ("套用設定至Live View顯示", "實時提供"),
                    ("顯示屏類型", "3吋翻揭式顯示屏"),
                    ("顯示屏像素", "約104萬像素、3:2寬比例、電容式觸控屏幕"),
                    ("角度調校", "向上翻揭：最多80度\n向下翻揭：最多180度\n當在自拍模式時，顯示屏會提供水平翻轉的鏡像畫面"),
                    ("亮度控制／色溫控制", "±7級／±7級"),
                    ("觸控操作", "提供"),
                    ("自動對焦系統", "高速Imager AF系統"),
                    ("對焦點", "121點對比度式自動對焦點"),
                    ("對焦點選擇模式", "121點自動對焦、焦點組自動對焦（9點）、單點自動對焦"),
                    ("對焦模式", "單次自動對焦（S-AF）、連續自動對焦（C-AF）、手動對焦（MF）、單次自動對焦 + 手動對焦（S-AF + MF）、焦點追蹤（C-AF + TR）"),
                    ("臉孔對焦／眼部對焦", "提供／提供"),
                    ("眼部對焦模式", "關閉／最近眼部優先"),
                    ("輔助手動對焦", "轉動對焦環後（於S-AF+MF或MF模式），Live View畫面將會放大"),
                    ("峰值對焦功能", "提供（色彩選擇：紅色、黃色、白色及黑色輪廓顯示）"),
                    ("AF照明燈", "提供")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.yuanyu.tw/product/dslr/epl10/spec.php")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("OLYMPUS PEN E-PL10")
    }
}

#Preview {
    OlympusType6()
}
