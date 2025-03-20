//
//  ContentView.swift
//  1st_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert1 = false
    @State private var showAlert2 = false
    @State private var showAlert3 = false
    @State private var showAlert4 = false
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            VStack {
                Text("지예혁 池睿赫")
                    .font(.system(size:60, weight: .bold))
                    .frame(width: 400, height: 80)
                    .font(.title)
                    .padding(.bottom, 0)
                Text("2003 02 08")
                    .foregroundColor(.white)
                    .font(.system(size:30, weight: .thin))
                    .shadow(color: .yellow, radius:1, x: 3, y:3)
                
                Image("myself")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
                
                Text("#iOS #loveGod #카마이클")
                    .font(.system(size:18, weight: .light))
                    .frame(width: 400, height: 30)
                    .font(.title)
                    .padding(.bottom, 30)
                
                HStack{
                    Image("srilanka")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 15)
                        .padding(.bottom, 30)
                    
                    Image("india")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 15)
                        .padding(.bottom, 30)
                    
                    Image("thailand")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 15)
                        .padding(.bottom, 30)
                    
                    Image("korea")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 15)
                        .padding(.bottom, 30)
                    
                }
                
                HStack(spacing:10){
                    Button("Sri-Lanka"){
                        showAlert1 = true
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 12.0)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(10)
                    .alert(isPresented: $showAlert1) {
                        Alert(
                            title: Text("스리랑카"),
                            message: Text("2003~2009"),
                            primaryButton: .default(Text("OK")),
                            secondaryButton: .cancel()
                                    )
                                }
                    
                    Button("India"){
                        
                        showAlert2 = true
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 10.0)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(10)
                    .alert(isPresented: $showAlert2) {
                        Alert(
                            title: Text("인도"),
                            message: Text("2009~2015"),
                            primaryButton: .default(Text("OK")),
                            secondaryButton: .cancel()
                                    )
                                }
                    
                    Button("Thailand"){
                        showAlert3 = true
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 12.0)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(10)
                    .alert(isPresented: $showAlert3) {
                        Alert(
                            title: Text("태국"),
                            message: Text("2015~2022"),
                            primaryButton: .default(Text("OK")),
                            secondaryButton: .cancel()
                                    )
                                }
                    Button("Korea"){
                        showAlert4 = true
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 14.0)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(10)
                    .alert(isPresented: $showAlert4) {
                        Alert(
                            title: Text("대한민국"),
                            message: Text("2022~2025"),
                            primaryButton: .default(Text("OK")),
                            secondaryButton: .cancel()
                                    )
                                }
                    
                }
                


                
            
            }
        }
        
    }
}

#Preview {
    ContentView()
}
