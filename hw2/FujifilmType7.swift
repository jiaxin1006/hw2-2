//
//  ContentView.swift
//  hw2
//
//  Created by user13 on 2024/10/23.
//
import SwiftUI

struct FujifilmType7: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            VStack(){
                ZStack {
                    if isVisible {
                        Image("x100v_image")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
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
                
                Text("Fujifilm X100V 規格")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<3) { index in
                            Image("x100v_pic_\(index)")
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
                    ("型號", "FUJIFILM X-100V"),
                    ("有效畫素數", "2610萬畫素"),
                    ("影像感應器", "帶有原色濾鏡的23.5mm×15.6mm (APS-C) X-Trans CMOS 4"),
                    ("感應器清潔系統", "超音波振動"),
                    ("記憶卡", "SD記憶卡（最高2GB）/SDHC記憶卡（最高32GB）/SDXC記憶卡（最高512GB） 支援UHS-I"),
                    ("檔案格式", "靜止影像: JPEG (Exif Ver.2.3), RAW: 14bit RAW (RAF原始格式)"),
                    ("拍攝影像畫素數", "L: <3:2> 6240×4160 / <16:9> 6240×3512 / <1:1> 4160×4160"),
                    ("鏡頭", "FUJINON定焦鏡頭, 焦距f=23mm (35mm 格式相當於: 35mm)"),
                    ("光圈", "F2 - F16 (1/3階)"),
                    ("焦距", "約10cm 至無窮遠"),
                    ("感光度", "AUTO1 / AUTO2 / AUTO3 / ISO160~12800 (1/3階)"),
                    ("曝光模式", "P(程式AE) / A(光圈優先AE) / S(快門速度有限AE) / M(手動曝光)"),
                    ("快門速度", "機械快門: P模式 4秒-1/4000秒, A模式 30秒-1/4000秒"),
                    ("連拍", "約 11.0 fps (JPEG: 38幅無失真壓縮 RAW: 17幅)"),
                    ("對焦模式", "單點自動對焦 / 連續自動對焦 / 手動對焦"),
                    ("白平衡", "自動場景識別 / 客製化1~3種"),
                    ("閃光燈", "內建彈出式閃光燈, 超智慧型閃光"),
                    ("觀景窗", "光學觀景窗, 帶有電子亮線框顯示"),
                    ("LCD螢幕", "3.0英吋，約162萬畫素，兩向翻折觸碰式"),
                    ("影片格式", "MOV, 壓縮方式: MPEG-4 AVC/H.264"),
                    ("電源", "使用NP-W126S電池"),
                    ("尺寸", "(寬) 128.0mm × (高) 74.8mm × (厚) 53.3mm"),
                    ("重量", "約 478g (包含電池與記憶卡)"),
                    ("工作溫度", "0 - 40°C"),
                    ("工作濕度", "10-80%（無冷凝）")
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
                

            
                Link("查看相容性更多詳細信息", destination: URL(string: "https://www.fujifilm.com.tw/personal/digitalcamera/fujifilm_x100v/specifications/index.html")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .navigationTitle("Fujifilm X100V")
    }
}

#Preview {
    FujifilmType7()
}
