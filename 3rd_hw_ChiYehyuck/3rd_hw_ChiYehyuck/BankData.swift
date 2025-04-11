//
//  BankData.swift
//  3rd_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 4/2/25.
//

import SwiftUI


struct BankData: Identifiable {
    let id = UUID()
        let icon: String
        let balance: String
        let name: String
        let buttonText: String?
        let changeText: String?
        let changeColor: Color?
        let isNavigatable: Bool
}

extension BankData{
    

    static let modeling: [[BankData]] = [
        [
          //  BankData(icon: "hana", balance: "339,690원", name: "WINGO통장", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: false),
            //BankData(icon: "toss", balance: "38,841", name: "토스뱅크통장", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: true),
            BankData(icon: "lightning", balance: "114원", name: "토스뱅크에 쌓인 이자", buttonText: "지금받기",changeText: nil, changeColor: nil, isNavigatable: false),
            BankData(icon: "kbank", balance: "650원", name: "MY입출금통장", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: false),
            BankData(icon: "kookmin", balance: "2,090원", name: "KB나라사랑우대통장", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: false),
            BankData(icon: "ibk", balance: "29원", name: "보통예금(BK나라사랑통장)", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: false),
            BankData(icon: "world", balance: "118원", name: "토스뱅크외화통장 · 2개", buttonText: nil ,changeText: "+4.42%", changeColor: .red, isNavigatable: false),
            BankData(icon: "kakao", balance: "0원", name: "입출금통장", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: false),
            BankData(icon: "ibk", balance: "1,051원", name: "보통예금(BK주거래생활금융통장)", buttonText: "송금",changeText: nil, changeColor: nil, isNavigatable: false),
            BankData(icon: "stack", balance: "15,257,990원", name: "투자 모아보기 · 15개", buttonText: nil ,changeText: "-2.6%", changeColor: .blue, isNavigatable: false),
            
        ]
    ]
}


