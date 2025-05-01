//
//  DemoBankTwo.swift
//  3rd_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 4/4/25.
//

import SwiftUI

struct DemoBankTwo: View {
    let dataTwo : BankDataTwo_a
    
    var body: some View{
        VStack(){
                    HStack(spacing: 12) {
                        // Icon
                        Image(dataTwo.icon)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading, spacing: 4) {
                            // Transaction Name
                            Text(dataTwo.name)
                                .font(.headline)
                                .foregroundColor(.gray)
                            
                            // Time
                            Text(dataTwo.time)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing, spacing: 4) {
                            // Amount
                            Text(dataTwo.amount)
                                .font(.headline)
                                .foregroundColor(dataTwo.isPositive ? .blue : .gray)
                            
                            
                            // Balance
                            Text(dataTwo.balance)
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 8)
                }
               
    }
    
}

#Preview {
    VStack{
        ForEach(BankDataTwo_a.modeling_a[0]) { item in
            DemoBankTwo(dataTwo: item)
                .padding(.horizontal, 16)
                .padding(.top, 15)
                .background(Color.white)
        }
    }
}
