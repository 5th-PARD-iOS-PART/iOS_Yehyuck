
import SwiftUI
class TransferViewModel: ObservableObject {
    @Published var amount: String = ""
}

struct SendingView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: NumberViewModel
    @StateObject var transfer = TransferViewModel()
    
    
    var numericAmount: Int? {
        Int(transfer.amount)
    }

    let keypad: [[String]] = [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"],
        ["00", "0", "←"]
    ]

    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Text("내 토스뱅크 통장")
                        .font(.system(size: 24, weight: .bold))
                    Text("에서")
                    Spacer()
                }
                .padding()
                HStack{
                    Text("잔액 \(viewModel.TossMoney)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 10 )
                
                HStack {
                    Text("내 WINGO통장")
                        .font(.system(size: 24, weight: .bold))
                    Text("으로")
                    Spacer()
                }
                .padding()
                HStack{
                    Text("하나은행15789165262107")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 10)
                

                
                VStack(alignment: .leading) {
                    if transfer.amount.isEmpty {
                        Text("얼마나 옮길까요?")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.gray)
                            .padding(.leading, -170)
                    } else {
                        Text("\(transfer.amount)원")
                            .font(.system(size: 28, weight: .bold))
                            .padding(.leading, -170)
                    }
    /*
                    Text("잔액 \(viewModel.TossMoney) 입력")
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.leading, -170)
                    */
                    Text((numericAmount ?? 0) > viewModel.TossMoney
                         ? "잔액이 \(viewModel.TossMoney)원이에요"
                         : "잔액 \(viewModel.TossMoney) 입력")
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .foregroundColor((numericAmount ?? 0) > viewModel.TossMoney ? .red : .gray)
                        .padding(.leading, -170)
                   
                    
                }

                Spacer()
               
                if !transfer.amount.isEmpty {
                    NavigationLink(destination: LastSendView(transfer: transfer)) {
                    Text("다음")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background((numericAmount ?? 0) > viewModel.TossMoney ? Color.gray.opacity(0.3) : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .disabled((numericAmount ?? 0) > viewModel.TossMoney)
                    }
                    .disabled((numericAmount ?? 0) > viewModel.TossMoney)
                        
                    
                }

                // Custom keypad
                VStack(spacing: 20) {
                    ForEach(keypad, id: \.self) { row in
                        HStack(spacing: 40) {
                            ForEach(row, id: \.self) { key in
                                Button(action: {
                                    handleKeyTap(key)
                                }) {
                                    Text(key)
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 60, height: 60)
                                }
                            }
                        }
                    }
                }
                .padding(.bottom, 30)
            
        }
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
    
   

    func handleKeyTap(_ key: String) {
        switch key {
        case "←":
            if !transfer.amount.isEmpty {
                transfer.amount.removeLast()
            }
        default:
            transfer.amount += key
        }
    }
}

#Preview {
    SendingView()
}

