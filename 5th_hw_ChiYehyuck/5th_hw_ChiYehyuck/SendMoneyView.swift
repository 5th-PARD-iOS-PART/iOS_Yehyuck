//
//  SendMoneyView.swift
//  3rd_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 4/9/25.
//

import SwiftUI

struct Account: Identifiable {
    let id = UUID()
    let bankicon: String
    let name: String
    let bankInfo: String
    let icon: String
}

struct SendMoneyView: View {
    @EnvironmentObject var viewModel: NumberViewModel
    @Environment(\.dismiss) var dismiss
    @State private var selectedTab = 0
    @State private var accountNumber = ""
    
    let AccountList = [
        Account(bankicon: "kookmin", name: "김정희", bankInfo: "KB국민96314175848", icon: "star"),
        Account(bankicon: "kakao", name: "내입출금통장", bankInfo: "카카오뱅크3333-20-8455642", icon: "star"),
        Account(bankicon: "ibk", name: "김래언", bankInfo: "IBK기업286-104115-01-019", icon: "star"),
        Account(bankicon: "kookmin", name: "김정희", bankInfo: "KB국민96314175848", icon: "star"),
        Account(bankicon: "kakao", name: "내입출금통장", bankInfo: "카카오뱅크3333-20-8455642", icon: "star"),
        Account(bankicon: "ibk", name: "김래언", bankInfo: "IBK기업286-104115-01-019", icon: "star"),
        
        ]
    

    var body: some View {
        NavigationStack{
            VStack(){
                HStack{
                    Text("어디로 돈을 보낼까요?")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color(.label))
                        .padding(.leading, 18)
                    Spacer()
                }
                
                Picker("", selection: $selectedTab) {
                    Text("계좌").tag(0)
                    Text("연락처").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .scaleEffect(x: 1.0, y: 1.5)
                .padding(25)
                
                
                
                
                HStack {
                    Text("계좌번호입력")
                        .font(.system(size: 21, weight: .bold))
                        .foregroundColor(.gray)
                    Spacer()
                        Image("camera")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top,10)
                
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 1)
                    .padding(.bottom, 30)
                
                ScrollView{
                    HStack {
                        Text("내 계좌")
                            .foregroundColor(.gray)
                            .font(.body)
                        Spacer()
                        HStack(spacing: 4) {
                            Text("+18개")
                                .foregroundColor(.gray)
                                .font(.footnote)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.footnote)
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    NavigationLink(destination: SendingView().toolbar(.hidden, for: .tabBar)){
                        HStack { //A
                            Image("hanastar")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("WINGO통장")
                                        .font(.headline)
                                        .bold()
                                        .foregroundColor(.primary)
                                }
                                Text("하나은행157-891652-62107")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image("bluestar")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.blue)
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 8 ) //A
                        
                    }
                        
                    
                    
                    
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 40, height: 40)
                            Text("삼성증권")
                                .font(.system(size: 10))
                                .foregroundColor(.white)
                        }
                        
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("종합매매")
                                    .font(.headline)
                                    .bold()
                            }
                            Text("삼성증권7112898902-01")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image("bluestar")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 8 )
                    
                    HStack{
                        Text("최근 보낸 계좌")
                            .padding()
                        Spacer()
                    }
                    ForEach(AccountList) { account in
                        HStack { //A
                            Image(account.bankicon)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(account.name)
                                        .font(.headline)
                                        .bold()
                                }
                                Text(account.bankInfo)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(account.icon)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.blue)
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 8 ) //A
                    }
                
                }
            

            }
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                       dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.gray)
                        
                    }
                    
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
       
    
}
   

#Preview {
    SendMoneyView()
}
