
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct OlympusType5: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("e-p7")
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
                
                Text("Olympus PEN E-P7 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("ep7_pic_\(index)")
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
                    ("記錄媒體類型", "SD, SDHC (UHS-I / II), SDXC (UHS-I / II)"),
                    ("感光元件尺寸", "17.4mm x 13.0mm（Micro 4/3）"),
                    ("鏡頭接環", "Micro 4/3標準接環"),
                    ("感光元件類型", "4/3\" Live MOS感光元件"),
                    ("像素數目", "有效像素：約2,030萬像素\n總像素：約2,180萬像素"),
                    ("比例", "4:3"),
                    ("防塵對策", "SSWF（Super Sonic Wave Filter）感光元件超音波防塵"),
                    ("相片記錄格式", "DCF2.0, Exif2.31"),
                    ("相片檔案格式", "RAW（12-bit無失真壓縮）、RAW + JPEG、JPEG"),
                    ("相片記錄影像尺寸", "【RAW】5184 x 3888像素\n【JPEG】5184 x 3888像素至1280 x 960像素"),
                    ("影像穩定系統類型", "內置5軸感光元件位移影像穩定系統"),
                    ("影像穩定模式", "S-IS啟動、關閉"),
                    ("影像穩定能力", "補償幅度（只限機身）：4.5級"),
                    ("鏡頭使用情況", "當使用M.Zuiko Digital ED 14-42mm F3.5-5.6 EZ鏡頭\n焦距：42mm（相等於35mm相機標準：84mm）"),
                    ("焦距調校", "1個設定"),
                    ("鏡頭通訊功能", "鏡頭如沒有通訊功能亦可以被註冊"),
                    ("顯示屏類型", "3.0吋多角度電容式觸控顯示屏，約103.7萬像素、3:2寬比例"),
                    ("角度調校", "翻揭式\n向上翻揭：最多80度\n向下翻揭：最多180度（兼容自拍）"),
                    ("觸控功能", "觸控拍攝、自動對焦區域選擇、自動對焦區域放大、上一張／下一張、放大播放、觸控Live Guide、觸控式超級控制面板、藝術濾鏡／場景模式／進階攝影模式／影片拍攝模式選擇、自拍模式、Wi-Fi無線連接、影片控制"),
                    ("亮度控制／色溫控制", "±7級／±7級"),
                    ("顏色屬性", "Vivid（鮮艷）／Natural（自然）"),
                    ("自動對焦系統", "高速Imager AF系統，對比度式自動對焦"),
                    ("對焦點", "121點對比度式自動對焦點"),
                    ("對焦點選擇模式", "所有對焦點、單點自動對焦（一般）、區域自動對焦（9點）"),
                    ("對焦模式", "單次自動對焦（S-AF）、連續自動對焦（C-AF）、手動對焦（MF）、單次自動對焦 + 手動對焦（S-AF + MF）、焦點追蹤（C-AF + TR）"),
                    ("放大自動對焦框", "可選擇放大倍率：3倍、5倍、7倍、10倍及14倍"),
                    ("超精細自動對焦", "提供"),
                    ("臉孔對焦", "提供"),
                    ("眼部對焦", "提供\n最近眼部優先"),
                    ("輔助手動對焦", "提供"),
                    ("峰值對焦功能", "峰值色彩：提供紅色、黃色、白色及黑色輪廓顯示"),
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.yuanyu.tw/product/dslr/ep7/spec.php")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("OLYMPUS PEN E-P7")
    }
}

#Preview {
    OlympusType5()
}
