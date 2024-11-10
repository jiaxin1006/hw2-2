//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct OlympusType2: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("om-5")
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
                
                Text("OM SYSTEM OM-5 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("om-5_pic_\(index)")
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
                    ("記錄媒體類型", "SD, SDHC (UHS-I / II), SDXC(UHS-I / II)"),
                    ("感光元件尺寸", "17.4 mm x 13.0 mm（Micro 4/3標準）"),
                    ("鏡頭接環", "Micro 4/3標準接環"),
                    ("感光元件類型", "4/3\" Live MOS感光元件"),
                    ("像素數目", "有效像素：2,040萬像素\n總像素：約2,180萬像素"),
                    ("比例", "4:3"),
                    ("防塵對策", "SSWF（Super Sonic Wave Filter）感光元件超音波防塵"),
                    ("相片記錄格式", "DCF2.0, Exif2.31"),
                    ("相片檔案格式", "RAW（12-bit無失真壓縮）、RAW + JPEG、JPEG"),
                    ("相片記錄影像尺寸", "【RAW】5184 x 3888像素\n【JPEG】5184 x 3888像素至1024 x 768像素"),
                    ("影像穩定系統類型", "內置5軸感光元件位移影像穩定系統"),
                    ("影像穩定模式", "4種（S-IS AUTO、S-IS1、S-IS2及S-IS3）及關閉"),
                    ("影像穩定能力", "補償幅度（只限機身）：6.5級\n當使用M.Zuiko Digital ED 12-40mm F2.8 PRO鏡頭，焦距：40mm（相等於35mm相機標準：80mm）\n補償幅度（Sync IS同步影像穩定技術）：7.5級\n當使用M.Zuiko Digital ED 12-100mm F4.0 IS PRO鏡頭，焦距：100mm（相等於35mm相機標準：200mm）、IS於半按快門時啟動：關閉"),
                    ("5-axis Sync IS", "可用\n當使用內置光學影像穩定器的M.Zuiko Digital鏡頭"),
                    ("焦距調校", "11個設定：可以儲存10支鏡頭的設定，鏡頭如沒有通訊功能亦可以被註冊"),
                    ("顯示屏類型", "3.0吋多角度電容式觸控顯示屏，約104萬像素、3:2長寬比例"),
                    ("觸控功能", "觸控拍攝、自動對焦區域選擇、自動對焦區域放大、觸控式瞼孔選擇、自動對焦目標觸控板、上一張／下一張、放大播放、觸控Live Guide、觸控式超級控制面板、Wi-Fi無線連接"),
                    ("角度調校", "提供（當在自拍模式時，顯示屏會提供水平翻轉的鏡像畫面）"),
                    ("亮度控制／色溫控制", "±7級／±7級"),
                    ("顏色屬性", "Vivid（鮮艷）／Natural（自然）"),
                    ("自動對焦系統", "高速Imager AF系統，混合使用相位檢測及對比度式自動對焦點"),
                    ("自動對焦工作範圍", "最低亮度（EV-3.5）／最高亮度（EV20）"),
                    ("對焦點／對焦點選擇模式", "相位檢測自動對焦點（121點）、對比度式自動對焦點（121點）\n所有對焦點、單點自動對焦（一般、精細）、小區域自動對焦（5點）、中區域自動對焦（9點）、大區域自動對焦（25點）及自定義對焦點組合\n自定對焦點組合儲存設定數目：4"),
                    ("對焦模式", "單次自動對焦（S-AF）、單次自動對焦（S-AF + MF）、連續自動對焦（C-AF）、連續自動對焦（C-AF + MF）、手動對焦（MF）、焦點追蹤（C-AF + TR）、預設手動對焦（Preset MF）、星空自動對焦（S-AF）、星空自動對焦（S-AF + MF）"),
                    ("C-AF靈敏度設定", "5級"),
                    ("自動對焦限制器", "提供\n最多可儲存3個距離設定"),
                    ("自動對焦目標觸控板", "提供"),
                    ("放大自動對焦框", "可選擇放大倍率：3倍、5倍、7倍、10倍及14倍"),
                    ("超精細自動對焦", "提供"),
                    ("臉孔對焦／眼部對焦", "提供"),
                    ("輔助手動對焦", "提供"),
                    ("峰值對焦功能", "提供"),
                    ("焦點指示器", "提供"),
                    ("焦點調整", "提供"),
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.yuanyu.tw/product/dslr/om5/spec.php")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("OM SYSTEM OM-5")
    }
}

#Preview {
    OlympusType2()
}
