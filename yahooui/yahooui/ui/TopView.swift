//
//  TopView.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/04/05.
//  Copyright © 2020 石倉圭介. All rights reserved.
//
// todo: safearea

import SwiftUI

struct TopView: View {
    let gManues = ["すべて","StayHome","ニュース","クーポン","芸能","スポーツ","話題","フォロー","東京五輪"]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 0) {
            HStack {
                Text("Yahoo!検索")
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("検索")
                    .foregroundColor(Color.white)
                }
                .padding()
                .background(Color.blue)
                Image(systemName:"mic.fill" ).foregroundColor(.gray)
                Image(systemName:"square.on.square" ).foregroundColor(.gray)
            }
            HStack {
                Button(action: {}){
                    Text("ログイン")
                    .foregroundColor(Color.black)
                    .font(.system(size: 12))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                Divider()
                Button(action: {}){
                    Text("ID新規取得")
                    .foregroundColor(Color.black)
                    .font(.system(size: 12))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
            .frame(height: 30.0, alignment: .center)
            .frame(maxWidth: .infinity)
            .background(Color.init(hex: "eee"))
            .border(Color.init(hex: "bbb"), width: 0.5)
            HStack {
                HStack {
                    Text("緊急事態を宣言 新型コロナ最新情報まとめ")
                    .foregroundColor(Color.red)
                    .font(.system(size: 12))
                }
                .frame(maxWidth: .infinity)
                .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
                .overlay(
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.red, lineWidth: 2)
                )
                .background(Color.white)
            }
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
            .frame(maxWidth: .infinity)
            .background(Color(red: 230/255, green: 230/255, blue: 230/255))
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("メール").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("天気").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("占い").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("お気に入り").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("ショッピング").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                }
                Divider()
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("スポーツナビ").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("ヤフオク！").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("経路情報").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    VStack(spacing: 0) {
                        Button(action: {}){
                            Image(systemName:"mic.fill" ).foregroundColor(.gray)
                        }
                        .frame(height: 35, alignment: .center)
                        Text("スロットくじ").font(.system(size: 8))
                    }
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    Divider()
                    Text("すべて").font(.system(size: 10))
                    .frame(height: 48, alignment: .center)
                    .frame(maxWidth: .infinity)
                    .background(Color.init(hex: "eee"))
                }
                Divider()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<9) {
                        Text(" \(self.gManues[$0])")
                        .font(.caption)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                        Divider()
                    }
                }
                .frame(height: 20, alignment: .center)
                .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
                .background(Color.init(hex: "eee"))
            }
            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
            .background(Color(red: 230/255, green: 230/255, blue: 230/255))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.white)
        
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
