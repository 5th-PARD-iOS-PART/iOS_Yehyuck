
 import SwiftUI
 class NumberViewModel: ObservableObject {
 @Published var TossMoney: Int = 38841
}



struct ContentView: View {

    @StateObject var viewModel = NumberViewModel()
    var body: some View {
        NavigationView{
            VStack{
                BankTabView()
            }
            .environmentObject(viewModel)
            
        }
       
        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    ContentView()
}



/*
 
 //
 //  ShoppingAll.swift
 //  5th_hw_ChiYehyuck
 //
 //  Created by Yehyuck Chi on 5/1/25.
 //

 import SwiftUI

 struct ShoppingAll: View {
     var sortedItems: [ShoppingItem] {
         ShoppingMockData.items.sorted {
             extractNumericPrice($0.price) < extractNumericPrice($1.price)
         }
     }

     func extractNumericPrice(_ priceString: String) -> Int {
         let digits = priceString.filter { $0.isNumber }
         return Int(digits) ?? 0
     }
     
     var body: some View {
         ZStack{
             ScrollView{
                 VStack{
                     //here
                     HStack{
                         AdsView()
                     }
                     
                     
                     
                     //here
                     HStack{
                         DailyView()
                     }
                     
                     .padding(.top, -15)
                     .padding(.bottom, 20)
                     
                     HStack {
                                 Text("오늘의 상품")
                                     .font(.title3)
                                     .bold()
                                     .foregroundColor(Color(.darkGray))
                                 
                                 Spacer()
                                 
                                 Text("00:47")
                                     .font(.subheadline)
                                     .foregroundColor(.blue)
                                     .padding(.horizontal, 12)
                                     .padding(.vertical, 6)
                                     .background(
                                         RoundedRectangle(cornerRadius: 12)
                                             .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                                     )
                                 Spacer()
                                 
                                 Text("AD")
                                     .font(.subheadline)
                                     .foregroundColor(.gray)
                                     .padding(.horizontal, 12)
                                     .padding(.vertical, 6)
                                     .background(
                                         RoundedRectangle(cornerRadius: 12)
                                             .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                                     )
                             }
                             .padding(.horizontal)
                             .padding(.top, -30)
                     
                     
                     //add mockdata view below
                     VStack(spacing: 16) {
                             ForEach(sortedItems) { item in
                                 DemoShopping(item: item)
                             }
                         }
                         .padding(.horizontal)
                     //
                     
                     
                     Spacer()
                     
                    
                 }
                 
             }
             
         
         }
         .background(Color.white)
     }
 }

 #Preview {
     ShoppingAll()
 }

 
 import SwiftUI

 struct ShoppingFood: View {
     let category: String = "식품"
        
        var filteredItems: [ShoppingItem] {
            ShoppingMockData.items.filter { $0.category == category }
        }
        
        var body: some View {
            ScrollView {
                HStack{
                    Text("식품")
                        .font(.system(size: 24, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, -20)
                        .padding()
                }
                VStack(spacing: 16) {
                    ForEach(filteredItems) { item in
                        DemoShopping(item: item)
                    }
                }
                .padding()
            }
            .background(Color.white)
        }
 }

 #Preview {
     ShoppingFood()
 }

 */
