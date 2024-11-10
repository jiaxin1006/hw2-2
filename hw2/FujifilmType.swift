//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI


struct FujifilmType: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Image("brand_fuli")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 230)
                    .clipped()

                // X系列
                Section(header: Text("X 系列").font(.title)) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("無反 APS-C 相機統稱為 X 系列")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("X-T 系列")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.091, green: 0.259, blue: 0.585))
                        Text("是富士相機的代表單眼造型外觀，富士賣最好的相機基本上都屬於 X-T 系列，而 X-T 系列主要有分為 3 個等級")
                        Text("百位數的入門款：")
                            .fontWeight(.medium)
                        Text("為入門機種，除了機頂的轉盤設計較少較簡化之外、採用富士獨門的 X-Trans CMOS 感光元件，因此解析力和色彩還原力相較富士其他相機比較差，較輕小的重量和體積，以及相較高解析力的觸控螢幕，對於初學者來說都非常友善")
                        Text("十位數的中階款：")
                            .fontWeight(.medium)
                        Text("為中階機種，它通常會配備前代「個位數高階款」的部分功能，且配置的轉盤功能也比百位數相機豐富和專業一點。")
                        Text("個位數的高階款：")
                            .fontWeight(.medium)
                        Text("為高階機種，所有高階相機想像到的功能 (如高連拍速度、防滴防塵、雙卡槽等)，都會出現在這個級別的相機上，加上完整和專業的轉盤設計。")
                        Text("X-A 系列")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.091, green: 0.259, blue: 0.585))
                        Text("入門款的 X-A 系列基本上可以對應 X-T 系列的百位數相機屬於入門款相機，X-A 大部分功能相比 X-T 百位數，大致一樣或是稍差。")
                        Text("被歸類於旁軸類型相機，卻無觀景窗，僅能透過相機背後的 LCD 螢幕進行取景。")
                        Text("X-E 系列")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.091, green: 0.259, blue: 0.585))
                        Text("中階款的 X-E 系列基本上可以對應 X-T 系列的十位數機種，使用富士獨家的 X-Trans CMOS 感光元件，也有中階相機該有的轉盤設置和性能，重量和體積十分輕巧。")
                        Text("另外 X-E 系列的觀景窗僅能電子取景、並非真的光學取景，因此實際上只是外觀像旁軸的相機。")
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                
                // GFX系列
                Section(header: Text("GFX 系列").font(.title)) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("無反中片幅相機統稱為 GFX 系列")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("GFX-50 系列")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.091, green: 0.259, blue: 0.585))
                        Text("富士的 GFX-50 系列有 50S 和 50R 兩種型號，型號 S 表示外觀似單眼的相機，而型號 R 則表示外觀類似旁軸相機。中片幅雖然本身並不適合初學者，但 50 系列主要仍是屬於入門款，除了有效將中片幅相機重量壓到 700-900g ，價格更是來到業餘玩家負擔的起的水位，因此主要想吸引那些對中片幅躍躍欲試的玩家。")
                        Text("GFX-100 系列")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.091, green: 0.259, blue: 0.585))
                        Text("GFX-100 系列則是中片幅系列的進階款，除了擁有一億畫素之外，更可以拍攝 16 bit 的 RAW 檔，和一般全畫幅相機比起來，完全是另一個層級的存在。而目前GFX-100 系列有兩個產品，分別是 GFX-100 和 GFX-100S。當中最主要差異是 100S 為輕巧平民版，重量整整少了 500g。")
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }

                // X100系列
                Section(header: Text("X100 系列").font(.title)) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("不可換鏡頭稱為 X100 系列")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("富士的類單為 X100 系列，發表至今共有 X100 , X100S , X100T , X100F 和最新的 X100V 共 5 款。X100 也是屬於旁軸造型外觀的相機，小巧機身搭配輕巧定焦鏡、復古有型的吸引人外觀、再加上擁有富士傳統轉盤的可玩度，使得 X100 系列一直是討論度頗高的相機。")    
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationTitle("介绍")
    }
}

#Preview {
    FujifilmType()
}
