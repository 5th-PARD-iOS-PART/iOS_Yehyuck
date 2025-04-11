import SwiftUI

struct BankViewTwo: View {
    @EnvironmentObject var viewModel: NumberViewModel
    @Environment(\.dismiss) var dismiss
    @State private var selectedTab = 0
    let tabs = ["통장", "내 토스뱅크", "상품찾기"]
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    
                    HStack {
                        Button(action: {
                            dismiss()
                            
                        }) {
                            Image("reverseArrow")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Text("통장관리")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .padding()
                    }
                    .padding()
                    
                    HStack {
                        ForEach(0..<tabs.count, id: \.self) { index in
                            VStack {
                                Text(tabs[index])
                                    .font(.system(size: 16, weight: selectedTab == index ? .bold : .regular))
                                    .foregroundColor(selectedTab == index ? .black : .gray)
                                    .onTapGesture {
                                        selectedTab = index
                                    }
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(selectedTab == index ? .black : .clear)
                                
                            }
                        }
                    }
                    .padding(.horizontal)
                    ScrollView{
                        
                        Section(){
                            VStack{
                                Text("토스뱅크 1000-9047-0710")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                            }
                            .padding(.top, 80)
                            .padding(.bottom, -12)
                            HStack{
                                Text("\(viewModel.TossMoney)원")
                                    .font(.title2)
                                
                                Spacer()
                                Button(action: {}) {
                                    HStack {
                                        Image("blackCard")
                                            .foregroundColor(.gray)
                                        Text("카드")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    .padding()
                                    .background(Color(.systemGray6))
                                    .cornerRadius(30)
                                    
                                }
                                
                                
                            }
                            
                            HStack{
                                Button(action: {}) {
                                    Text("채우기")
                                        .font(.headline)
                                        .foregroundColor(.blue)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color.blue.opacity(0.1))
                                        .cornerRadius(12)
                                }
                                NavigationLink(destination: SendMoneyView().toolbar(.hidden, for: .tabBar)) {
                                    Text("보내기")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color.blue)
                                        .cornerRadius(12)
                                }
                                
                            }
                            
                            
                            HStack(spacing: 10) {
                                Image("blueLightning")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("어제까지 쌓인 이자")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                    
                                    Text("114원 지금 받기")
                                        .font(.system(size: 18))
                                        .foregroundColor(.blue)
                                }
                                Spacer()
                                
                                Image("thick_arrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7, height: 13)
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth: .infinity, minHeight: 80)
                            
                            VStack{
                                Rectangle()
                                    .fill(Color(UIColor.systemGray6))
                                    .padding(.horizontal, -16)
                            }
                            VStack{
                                HStack{
                                    Text("전체")
                                        .foregroundColor(.gray)
                                        .padding(.leading, 10)
                                    Image("downArrow")
                                    Spacer()
                                    Image("magnify")
                                        .padding(.trailing, 10)
                                }
                            }
                            
                            VStack{
                                Text("3월 22일")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding(.top, 10)
                            .padding(.bottom, -10)
                            
                            VStack{
                                ForEach(BankDataTwo_a.modeling_a[0]) { item in
                                    DemoBankTwo(dataTwo: item)
                                        .padding(.horizontal, 16)
                                        .padding(.top, 15)
                                        .background(Color.white)
                                }
                                
                            }
                            VStack{
                                Text("3월 21일")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding(.top, 10)
                            .padding(.bottom, -10)
                            VStack{
                                ForEach(BankDataTwo_a.modeling_b[0]) { item in
                                    DemoBankTwo(dataTwo: item)
                                        .padding(.horizontal, 16)
                                        .padding(.top, 15)
                                        .background(Color.white)
                                }
                                
                            }
                            
                        }
                        .padding(.horizontal, 16)
                        .padding(.top, 15)
                        .background(Color.white)
                        .listRowSeparator(.hidden) // ✅ Hides the separator
                        .listRowInsets(EdgeInsets()) // ✅ Removes extra padding
                    }
                    //list
                    
                    
                }
            }
            .navigationBarBackButtonHidden(true)
           
        }
        .navigationBarBackButtonHidden(true)
            
    }
        
}

       
    


#Preview {
    BankViewTwo()
        .environmentObject(NumberViewModel())
}
