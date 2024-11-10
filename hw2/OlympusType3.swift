//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct OlympusType3: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("e-m1")
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
                
                Text("OM-D E-M1 Mark III 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("em1_pic_\(index)")
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
                    ("產品類型", "4/3\" Live MOS感光元件"),
                    ("像素數目", "有效像素：約2,040萬像素\n總像素：約2,180萬像素"),
                    ("比例", "4:3"),
                    ("防塵對策", "SSWF（Super Sonic Wave Filter）感光元件超音波防塵"),
                    ("相片記錄格式", "DCF2.0, Exif2.31"),
                    ("相片檔案格式", "RAW（12-bit無失真壓縮）、RAW + JPEG、JPEG"),
                    ("相片記錄影像尺寸", "【RAW】5184 x 3888像素\n【JPEG】5184 x 3888像素至1024 x 768像素"),
                    ("雙記憶卡插槽設定", "標準、自動切換、雙卡獨立儲存、雙卡同步儲存"),
                    ("開新資料夾及指定儲存至個別資料夾", "提供"),
                    ("影像穩定系統類型", "內置5軸感光元件位移影像穩定系統，適用於影片及相片拍攝"),
                    ("影像穩定模式", "4種（S-IS AUTO、S-IS1、S-IS2及S-IS3）、關閉"),
                    ("影像穩定能力", "補償幅度（只限機身）：7.0級\n當使用M.Zuiko Digital ED 12-40mm F2.8 PRO鏡頭\n焦距：40mm（相等於35mm相機標準：80mm）\n補償幅度（Sync IS同步影像穩定技術）：7.5級\n當使用M.Zuiko Digital ED 12-100mm F4.0 IS PRO鏡頭\n焦距：100mm（相等於35mm相機標準：200mm）、IS於半按快門時啟動：關閉、連拍模式：高"),
                    ("5軸Sync IS同步影像穩定技術", "提供\n當使用內置光學影像穩定器的M.Zuiko Digital鏡頭"),
                    ("焦距調校", "11個設定：可以儲存10支鏡頭的設定\n鏡頭如沒有通訊功能亦可以被註冊"),
                    ("自動對焦系統", "高速Imager AF系統，混合使用相位檢測自動對焦點及對比度式自動對焦點"),
                    ("自動對焦工作範圍", "最低亮度（EV-3.5）／最高亮度（EV20）\nISO 100、使用F2.8鏡頭"),
                    ("對焦點／對焦點選擇模式", "相位檢測自動對焦點（121點）、對比度式自動對焦點（121點）\n所有對焦點、單點自動對焦（一般、精細）\n區域自動對焦（5點、9點、25點）、自定對焦點組合（可選擇自動對焦點範圍及對焦點間距）\n自定對焦點組合儲存設定數目：4"),
                    ("對焦模式", "單次自動對焦（S-AF）、單次自動對焦（S-AF + MF）\n連續自動對焦（C-AF）、連續自動對焦（C-AF + MF）\n手動對焦（MF）、焦點追蹤（C-AF + TR）\n預設手動對焦（Preset MF）、星空自動對焦（S-AF）、星空自動對焦（S-AF + MF）"),
                    ("C-AF靈敏度設定", "5級"),
                    ("自動對焦限制器", "提供，最多可儲存3個距離設定"),
                    ("自動對焦目標觸控板", "提供"),
                    ("放大自動對焦框", "可選擇放大倍率：3倍、5倍、7倍、10倍及14倍"),
                    ("超精細自動對焦", "提供"),
                    ("臉孔對焦", "提供"),
                    ("眼部對焦", "提供，從眼部優先/右眼優先/左眼優先中選擇"),
                    ("輔助手動對焦", "提供"),
                    ("峰值對焦功能", "提供"),
                    ("焦點調整", "提供"),
                    ("自動對焦照明燈", "提供"),
                    ("測光系統", "TTL影像感應器測光（Digital ESP測光324區、中央偏重平均測光、重點測光、高光位點測光、暗位點測光）\n支援對焦點連動功能"),
                    ("測光範圍", "最低亮度（EV-2）／最高亮度（EV20）\nISO 100、使用F2.8鏡頭"),
                    ("ISO感光度（自動）", "LOW (approx.64) ~ 6400\nISO LOW（相當於ISO 64） - ISO 6400"),
                    ("ISO感光度（手動）", "ISO LOW（相當於ISO 64、ISO 100）、ISO 200 - ISO 25600"),
                    ("曝光補償", "±5級（可以1/3級、1/2級或1級調整）\n實時取景畫面最高只可以顯示±3級的範圍"),
                    ("自動曝光鎖定", "提供，按下快門時進行鎖定（可以設定為AEL／AFL按鈕）"),
                    ("閃爍拍攝", "提供")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.yuanyu.tw/product/dslr/em1mk3/spec.php")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("OM-D E-M1 Mark III")
    }
}

#Preview {
    OlympusType3()
}
