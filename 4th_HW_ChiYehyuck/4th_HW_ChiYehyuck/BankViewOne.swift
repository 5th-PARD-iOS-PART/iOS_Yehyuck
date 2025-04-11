
import SwiftUI

struct BankViewOne: View {
    @EnvironmentObject var viewModel: NumberViewModel
    var body: some View {
        NavigationStack{
        
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea()
                
                VStack{
                    HStack(){
                        
                        Image("doc")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 21, height: 22)
                            .foregroundColor(.gray)
                            .padding(.leading, 2)
                        Text("할 일")
                            .font(.system(size: 23, design: .default))
                            .padding(.leading, 10)
                            .foregroundColor(.gray)
                        Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 8, height: 12)
                            .padding(.leading, 8)
                        Image("bill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 25)
                            .padding(.leading, 120)
                        Image("bell")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 25)
                            .padding(.leading, 15)
                        Image("circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 8, height: 9)
                            .offset(x: 5, y: -12)
                            .padding(.leading, -13)
                    }
                    
                    
                    
                    
                    List{
                        //치아는 뼈?
                        Section(){
                            HStack(spacing: 10) {
                                Image("teeth")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("치아는 뼈일까?")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                    
                                    Text("정답보기")
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
                            
                        }
                        
                        //토스뱅크
                        Section(){
                            HStack(spacing: 8) {
                                Text("토스뱅크")
                                    .font(.system(size: 20))
                                
                                Text("내 소비복권긁기")
                                    .font(.system(size: 16))
                                    .foregroundColor(.blue)
                                    .padding(.leading, 90)
                                Spacer()
                                
                                Image("thick_arrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7, height: 13)
                                    .foregroundColor(.gray)
                                
                            }
                            .frame(maxWidth: .infinity, minHeight: 40)
                            
                            
                            .padding(.horizontal, 2)
                        }
                        
                        //은행나열
                        Section(){
                            HStack {
                                Image("hana")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.blue)
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("339,690원")
                                            .font(.headline)
                                            .bold()
                                    }
                                    
                                    Text("WINGO 통장")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                
                                Text("송금")
                                    .font(.system(size: 14))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(Color.gray.opacity(0.2))
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal, 16)
                            .padding(.top, 15)
                            .background(Color.white)
                            .listRowSeparator(.hidden) // ✅ Hides the separator
                            .listRowInsets(EdgeInsets()) // ✅ Removes extra padding
                            .contentShape(Rectangle())
                            
                            
                            NavigationLink(destination: BankViewTwo().toolbar(.hidden, for: .tabBar)) {
                                HStack { //N
                                    Image("toss")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.blue)
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Text("\(viewModel.TossMoney)원")
                                                .font(.headline)
                                                .bold()
                                        }
                                        
                                        Text("토스뱅크통장")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                    
                                    Text("송금")
                                        .font(.system(size: 14))
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 6)
                                        .background(Color.gray.opacity(0.2))
                                        .foregroundColor(.gray)
                                        .cornerRadius(10)
                                }
                                
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .padding(.top, 15)
                            .background(Color.white)
                            .listRowSeparator(.hidden) // ✅ Hides the separator
                            .listRowInsets(EdgeInsets()) // ✅ Removes extra padding
                            .contentShape(Rectangle())
                            
                            
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
                        
                        
                        //3월에 쓴돈
                        Section(){
                            HStack {
                                Image("W")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.blue)
                                
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("823,643")
                                            .font(.headline)
                                            .bold()
                                        
                                        
                                    }
                                    
                                    Text("3월에 쓴돈")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                
                                Button(action: {}) {
                                    Text("내역")
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
                        
                        
                        Section(){
                            VStack{
                                HStack {
                                    Image("check")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.blue)
                                    
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Text("내 신용점수")
                                                .font(.headline)
                                                .bold()
                                        }
                                        
                                    }
                                    Spacer()
                                    Button(action: {}) {
                                        Text("확인하기")
                                            .font(.system(size: 14))
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 6)
                                            .background(Color.gray.opacity(0.2))
                                            .foregroundColor(.gray)
                                            .cornerRadius(10)
                                    }
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 15)
                                Divider() // Top Line
                                HStack {
                                    Text("계좌계설")
                                        .padding()
                                    Divider()
                                    Text("카드발급")
                                        .padding()
                                    Divider()
                                    Text("대출받기")
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
                        
                        Section(){
                            HStack {
                                Image("mail")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.blue)
                                
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("[7만원]이 지급되었습니다")
                                            .font(.headline)
                                            .bold()
                                    }
                                    
                                    Text("빗썸신규회원100%지급")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                Spacer()
                            }
                        }
                        
                        
                        Section(header:Text("유재혁님을 위해 준비했어요")
                            .font(.title3)
                            .foregroundColor(.black)
                        ){
                            HStack{
                                HStack(spacing: 5) {
                                    Text("혜택받는\n체크카드")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                    
                                    Image("greencard")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 50)
                                }
                                .padding()
                                .frame(width: 175, height: 90)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 3)
                                
                                
                                HStack(spacing: 5) {
                                    Text("내 카드보다\n혜택받기")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                    
                                    Image("bluecard")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 50)
                                }
                                .padding()
                                .frame(width: 175, height: 90)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 3)
                            }
                        }
                        .listRowBackground(Color(.systemGray6).opacity(0.2))
                        
                        //->
                        Section(){
                            HStack{
                                Image("payment")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 21, height: 24)
                                
                                
                                Text("내현금영수증")
                                    .font(.body)
                                    .foregroundColor(.gray)
                                    .padding()
                                Spacer()
                                Image("thick_arrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7, height: 13)
                                    .foregroundColor(.gray)
                                
                            }
                            .padding(.vertical, -7)
                            HStack{
                                Image("tosscard")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 21, height: 24)
                                Text("토스신용카드")
                                    .font(.body)
                                    .foregroundColor(.gray)
                                    .padding()
                                Spacer()
                                Image("thick_arrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7, height: 13)
                                    .foregroundColor(.gray)
                                
                            }
                            .padding(.vertical, -7)
                            HStack{
                                Image("calculator")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 21, height: 24)
                                Text("더 낸 연말정산 돌려받기")
                                    .font(.body)
                                    .foregroundColor(.gray)
                                    .padding()
                                Spacer()
                                Image("thick_arrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7, height: 13)
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, -7)
                            
                            
                        }
                        .listRowSeparator(.hidden) // ✅ Hides the separator
                        
                        HStack{
                            Text("내 자산 숨기기")
                                .foregroundColor(.gray)
                                .padding()
                            Spacer()
                            Text("금액 가리기")
                                .foregroundColor(.gray)
                                .padding()
                        }
                        .padding(.top, 30)
                        .listRowBackground(Color(.systemGray6).opacity(0.2))
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                .listSectionSpacing(.custom(5))
                
                
                
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    BankViewOne()
            .environmentObject(NumberViewModel())
}
