//
//  ContentView.swift
//  TipAppSwiftUI
//
//  Created by walkerhilla on 2023/07/16.
//

import SwiftUI

struct ContentView: View {
  
  /// 검색 텍스트
  @State var searchText: String = ""
  
  var body: some View {
    NavigationStack {
      List {
        ZStack {
          Image("iOS16")
            .frame(height: 200)
            .scaledToFill()
            .offset(y: 80)
          Text("iPhone 탐색하기")
            .bold()
            .offset(x: -100, y: -90)
            .font(.system(size: 20))
        }
        
        Section {
          NavigationLink {
            Text("사용자 정보 보호하기 상세")
          } label: {
            Image(systemName: "lock.shield")
              .foregroundColor(.green)
            Text("사용자 정보 보호하기")
          }
          NavigationLink {
            Text("대비하기 상세")
          } label: {
            Image(systemName: "lifepreserver")
              .foregroundStyle(.linearGradient(Gradient(colors: [.orange, .orange.opacity(0.3)]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("대비하기")
          }
          NavigationLink {
            Text("필수 항목 설정하기 상세")
          } label: {
            Image(systemName: "star")
              .foregroundStyle(.linearGradient(Gradient(colors: [.red, .orange.opacity(0.5)]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("필수 항목 설정하기")
          }
          NavigationLink {
            Text("iPhone 개인 맞춤화하기 상세")
          } label: {
            Image(systemName: "heart")
              .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .pink]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("iPhone 개인 맞춤화하기")
          }
        } header: {
          Text("시작하기")
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.black)
            .offset(x: -5)
        }
        
        Section {
          NavigationLink {
            Text("iOS 16의 새로운 기능 상세")
          } label: {
            Image(systemName: "sparkles")
              .foregroundColor(.blue)
            Text("iOS 16의 새로운 기능")
          }
          NavigationLink {
            Text("건강 상세")
          } label: {
            Image(systemName: "heart.square")
              .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .pink]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("건강")
          }
          NavigationLink {
            Text("Siri 상세")
          } label: {
            Image(systemName: "infinity.circle")
              .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .purple.opacity(0.6)]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("Siri")
          }
        } header: {
          Text("더 찾아보기")
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.black)
            .offset(x: -5)
        }
        
        Section {
          NavigationLink {
            Text("사진 상세")
          } label: {
            Image(systemName: "photo.on.rectangle.angled")
              .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .orange.opacity(0.9)]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("사진")
          }
          NavigationLink {
            Text("카메라 상세")
          } label: {
            Image(systemName: "camera")
              .foregroundStyle(.linearGradient(Gradient(colors: [.orange.opacity(0.8), .yellow.opacity(0.3)]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("카메라")
          }
        } header: {
          Text("사진 및 카메라")
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.black)
            .offset(x: -5)
        }
        
        Section {
          NavigationLink {
            Text("AirPods 상세")
          } label: {
            Image(systemName: "airpods.gen3")
              .foregroundStyle(.linearGradient(Gradient(colors: [.blue.opacity(0.8), .blue.opacity(0.5)]), startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("AirPods")
          }
        } header: {
          Text("모든 기기")
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.black)
            .offset(x: -5)
        }
        
        Section {
          NavigationLink {
            Text("iPhone 상세")
          } label: {
            Label("iPhone", systemImage: "doc.plaintext")
          }
          NavigationLink {
            Text("Airpods 상세")
          } label: {
            Label("AirPods", systemImage: "doc.plaintext")
          }
        } header: {
          Text("사용 설명서")
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.black)
            .offset(x: -5)
        }
      }
      .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "검색")
      .navigationTitle("모음")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
