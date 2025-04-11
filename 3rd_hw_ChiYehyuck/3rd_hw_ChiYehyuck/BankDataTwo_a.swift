//
//  BankDataTwo_a.swift
//  3rd_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 4/4/25.
//

import SwiftUI

struct BankDataTwo_a: Identifiable {
    let id = UUID()
    let icon: String
    let name: String
    let time: String
    let amount: String
    let balance: String
    let isPositive: Bool // Determines if it's an income or expense
}

extension BankDataTwo_a{
    static let modeling_a: [[BankDataTwo_a]] = [
        [
            BankDataTwo_a(icon:"kakaotaxi", name: "카카오 택시_0", time: "11:13", amount: "-6,200원", balance: "38,341원", isPositive: false),
            BankDataTwo_a(icon: "kakaotaxi", name: "카카오 택시 선승인", time: "11:00", amount: "+6,900원", balance: "45,041원", isPositive: true),
            BankDataTwo_a(icon: "kakaotaxi", name: "카카오 택시 선승인", time: "11:00", amount: "-6,900원", balance: "38,141원", isPositive: false),
            
        ]
    ]
    
    
    static let modeling_b: [[BankDataTwo_a]] = [
        [
            BankDataTwo_a(icon: "game", name: "플렉스PC방", time: "22:44", amount: "-5,500원", balance: "45,041원", isPositive: false),
            BankDataTwo_a(icon: "game", name: "플렉스PC방", time: "21:35", amount: "-5,000원", balance: "50,541원", isPositive: false),
            BankDataTwo_a(icon: "cu", name: "씨유한동대오석관점", time: "16:17", amount: "-2,000원", balance: "55,541원", isPositive: false),
            BankDataTwo_a(icon: "cu", name: "씨유한동대오석관점", time: "15:59", amount: "-4,400원", balance: "57,541원", isPositive: false),
            BankDataTwo_a(icon: "kakaotaxi", name: "카카오 택시_0", time: "10:00", amount: "-7,000원", balance: "61,941원", isPositive: false),
            BankDataTwo_a(icon: "kakaotaxi", name: "카카오 택시 선승인", time: "09:47", amount: "+7,300원", balance: "68,941원", isPositive: true),
            BankDataTwo_a(icon: "kakaotaxi", name: "카카오 택시 선승인", time: "09:47", amount: "-7,300원", balance: "61,641원", isPositive: false),
            BankDataTwo_a(icon: "kakaotaxi", name: "카카오 택시 선승인", time: "09:46", amount: "+7,300원", balance: "68,941원", isPositive: true)
            
        ]
    ]
}
