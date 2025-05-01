
import SwiftUI

struct DailyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
                    

                    HStack {
                        ZStack(alignment: .topLeading) {
                            Image("nacho") // Add your kiwi image asset here
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity)
                                .frame(height: 150) // Adjust height as needed
                                .clipped()
                               // .resizable()
                                //.aspectRatio(contentMode: .fit)
                                //.frame(height: 100)
                            

                            HStack() {
                                Text("00:06:14 남음")
                                    .font(.caption2)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.black.opacity(0.7))
                                    .clipShape(Capsule())

                                Text("최저가보상★")
                                    .font(.caption2)
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 4)
                                        .background(Color(red: 1.0, green: 0.22, blue: 0.69)) // Pink badge
                                        .clipShape(Capsule())
                            }
                            .padding(6)
                        }

                        Spacer()
                    }

                    Text("[나쵸] 맛있음 진짜로 치폴레마요소스도 있음 굳굳")
                        .font(.subheadline)
                        .lineLimit(1)

                    HStack(spacing: 6) {
                        Text("2,900원")
                            .font(.headline)
                            .foregroundColor(.black)

                        Text("5,900원")
                            .font(.subheadline)
                            .strikethrough()
                            .foregroundColor(.gray)
                    }

                    Text("44.6만명이 구경함 ・ 무료배송")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
    }
}

#Preview {
    DailyView()
}
