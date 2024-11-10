//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI


struct OlympusType: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Image("brand_olympus")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 230)
                    .clipped()

                // 簡介
                Section(header: Text("簡介").font(.title)) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("輕巧外型，新手也適用的OLYMPUS")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("  OLYMPUS 的微單眼以兼具輕巧及高畫質而廣受歡迎關鍵就在於選用的感光元件 M4/3片幅大小，再加上其去掉了反光鏡，改以數位方式對焦，因而造就了輕盈好攜帶且便於日常使用的機身。")
                        Text("  OLYMPUS 的相機能使用的鏡頭數也不少，還有其強大的防手震機能，而且不論是哪台相機皆有搭載，這可說是只有 OLYMPUS 才有的特色。")
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                
                // OM-D系列
                Section(header: Text("OM-D 系列").font(.title)) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("具備完備拍照性能")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("  OM-D系列有著較為傳統的相機外型，機能方面，「E-M1 MarkⅢ」和「E-M5 MarkⅢ」等機型皆有著防塵、防滴的功能，並搭配可從視窗清晰構圖的電子觀景窗（EVF）。")
                        Text("  防塵、防滴功能讓相機不論是陰雨天或塵土飛揚的場所皆能使用；而 EVF 則能從視窗預覽拍照完成時的模樣，且目前的 OM-D系列全數皆配有五軸防震技術。")
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }

                // PEN系列
                Section(header: Text("PEN 系列").font(.title)) {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("擁有輕型且迷人的漂亮機身")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("  PEN系列的創始從微 4/3系統成立以來便延續至今，其精美的外型設計，在熱愛時尚、講究外型的攝影愛好者或初學者之間大有人氣，且操作方式可說專為新手打造，具備著超越小型相機的完善攝影機能。")
                        Text("    機體內部搭載著完成度極高的防手震功能，就算不用其他功能、單純地按下快門也能拍出漂亮照片，新手也能簡單快速地上手附有豐富的自訂藝術濾鏡，從曝光到色彩皆能詳細調整，而 PEN系列則少了修正水平與垂直位移兩種，故以三軸防震為主。")
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
    OlympusType()
}
