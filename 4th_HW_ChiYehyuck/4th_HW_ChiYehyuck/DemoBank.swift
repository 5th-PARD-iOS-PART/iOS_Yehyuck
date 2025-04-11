//
//  DemoBank.swift
//  3rd_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 4/2/25.
//

import SwiftUI

struct DemoBank: View {
    
    let data: BankData
    
    
    var body: some View {
        VStack {
                    LazyVStack {
                        HStack {
                            Image(data.icon)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(data.balance)
                                        .font(.headline)
                                        .bold()
                                    
                                    if let changeText = data.changeText {
                                        Text(changeText)
                                            .font(.subheadline)
                                            .bold()
                                            .foregroundColor(data.changeColor ?? .black)
                                    }
                                }
                                
                                Text(data.name)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            if let buttonText = data.buttonText {
                                Button(action: {}) {
                                    Text(buttonText)
                                        .font(.system(size: 14))
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 6)
                                        .background(Color.gray.opacity(0.2))
                                        .foregroundColor(.gray)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .padding(.vertical, 8)
                        .contentShape(Rectangle()) // ✅ Ensures whole row is tappable
                        
                        // ✅ Invisible NavigationLink (Only for navigatable rows)
                        .overlay(
                            Group {
                                if data.isNavigatable {
                                    NavigationLink(destination: BankViewTwo()) {
                                        EmptyView() // ✅ Invisible, but still tappable
                                    }
                                    .opacity(0) // ✅ Hides it
                                }
                            }
                        )
                    }
                }
    
    }
        
}

    
#Preview {
    List{
        
        
        Section(){
            
            ForEach(BankData.modeling[0]) { item in
                DemoBank(data: item)
                    .padding(.horizontal, 16)
                    .padding(.top, 15)
                    .background(Color.white)
                    .listRowSeparator(.hidden) // ✅ Hides the separator
                    .listRowInsets(EdgeInsets()) // ✅ Removes extra padding
            }
            
            VStack {
                Divider() // Top Line
                HStack {
                    Text("대출0")
                        .padding()
                        .foregroundColor(.gray)
                    Divider()
                    Spacer()
                    Text("증권7")
                        .foregroundColor(.gray)
                    Spacer()
                    Divider()
                    Spacer()
                    Text("저축3")
                        .foregroundColor(.gray)
                    Spacer()
                    Divider()
                    Text("전체26")
                        .foregroundColor(.gray)
                        .padding()
                }
                .frame(maxWidth: .infinity, minHeight:30)
                .padding(.horizontal, 5) // Remove extra horizontal padding
                .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
                Divider() // Bottom Line
            }
            .padding(.horizontal, -20)
            .padding(.bottom, -10)
        }
        .labelStyle(.iconOnly)
    }
}
