//
//  TopView.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/04/05.
//  Copyright © 2020 石倉圭介. All rights reserved.
//
// todo: safearea

import SwiftUI
import Foundation
import UIKit

struct Album {
    var albumArtWork: String
}

var albums:[Album] = [
    Album(albumArtWork: "1"),
    Album(albumArtWork: "2"),
    Album(albumArtWork: "3"),
]

struct CardView: View {
    var album: Album
    var body: some View {
        Text(album.albumArtWork)
    }
}

struct TopView: View {
    @State private var page = 0
    
    let gManues = ["すべて","StayHome","ニュース","クーポン","芸能","スポーツ","話題","フォロー","東京五輪"]
    fileprivate func gMenu() -> some View {
        return ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                Picker("", selection: $page){
                    ForEach(0..<9) { index in
                        Text(" \(self.gManues[index])")
                        .font(.caption)
                        .tag(index)
                        //Divider()
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 10))
                //https://stackoverflow.com/questions/58388071/how-to-implement-pageview-in-swiftui
                //https://masamichi.me/development/2019/10/12/swiftui-pageview.html
            }
            .frame(height: 20, alignment: .center)
            .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
            .background(Color.init(hex: "eee"))
            PageView(albums.map { CardView(album: $0) }).frame(height: 250)
        }
        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
        .background(Color(red: 230/255, green: 230/255, blue: 230/255))
    }
    
    fileprivate func searchBar() -> some View {
        return HStack(spacing: 0) {
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    Text("家で過ごそう")
                        .foregroundColor(Color.init(hex: "008080"))
                        .font(.system(size: 8))
                    Image(systemName:"square.on.square")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.red)
                }
                .padding(EdgeInsets(top: 2,leading: 2, bottom: 0, trailing: 2))
                Text("Yahoo!検索")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 12))
                Spacer()
                Image(systemName:"mic.fill" ).foregroundColor(.gray)
                Spacer().frame(width:10)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("検索")
                        .foregroundColor(Color.white)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }
                .padding(EdgeInsets(top: 6, leading: 10, bottom: 6, trailing: 10))
                .background(Color.blue)
            }
            .frame(maxWidth: .infinity)
            .padding(EdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1))
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color.blue, lineWidth: 2)
            )
            Spacer().frame(width: 10)
            Image(systemName:"square.on.square" ).foregroundColor(.gray)
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 0) {
            searchBar()
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
            gMenu()
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
