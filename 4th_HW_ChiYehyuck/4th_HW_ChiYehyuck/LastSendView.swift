//
//  LastSendView.swift
//  3rd_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 4/10/25.
//

import SwiftUI

struct LastSendView: View {
    @State private var goToNextPage = false
    @Environment(\.dismiss) var dismiss
    @ObservedObject var transfer: TransferViewModel
    @EnvironmentObject var viewModel: NumberViewModel
    
    var numericAmount: Int? {
        Int(transfer.amount)
    }
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                
                // Title Section
                VStack(spacing: 4) {
                    Text("내 WINGO통장으로")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    Text("\(transfer.amount)원을")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text("옮길까요?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                .multilineTextAlignment(.center)
                .padding(.top, 40)
                
                Spacer()
                
                // Account Info Section
                VStack(spacing: 12) {
                    HStack {
                        Text("받는 분에게 표시")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("유재혁")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Image("thick_arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 7, height: 13)
                            .foregroundColor(.gray)
                        
                    }
                    HStack {
                        Text("출금 계좌")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("내 토스뱅크 통장")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Image("thick_arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 7, height: 13)
                            .foregroundColor(.gray)
                        
                    }
                    HStack {
                        Text("입금 계좌")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("하나은행15789165262107")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: BankViewOne()) {
                    Text("옮기기")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .font(.headline)
                }
                .simultaneousGesture(TapGesture().onEnded {
                    if let amount = numericAmount, viewModel.TossMoney >= amount {
                        viewModel.TossMoney -= amount
                    }
                })

                
                    
                }
                
                Text("평생수수료 무료")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.top, 8)
                
            }
            
            .padding()
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.gray)
                        Text("토스뱅크송금")
                            .foregroundColor(.gray)
                            .padding(.leading, 120)
                        
                        
                    }
                    
                }
            }
            
        }
        
    }



#Preview{
    LastSendView(transfer:TransferViewModel())
}
