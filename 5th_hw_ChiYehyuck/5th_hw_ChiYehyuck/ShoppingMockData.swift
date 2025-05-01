import Foundation

struct ShoppingItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let price: String
    let originalPrice: String
    let rewardPoints: String
    let buyersInfo: String
    let badge: String?
    let timer: String?
    let imageName: String
    let category: String
}


struct ShoppingMockData {
    static let items: [ShoppingItem] = [
        ShoppingItem(
            title: "[햇반] 자취생 필수품 개꿀 햇반",
            subtitle: "",
            price: "6,990원",
            originalPrice: "12,000원",
            rewardPoints: "토스프라임 488원 적립",
            buyersInfo: "52.1만명이 구경함 • 무료배송",
            badge: "최저가보상★",
            timer: "00:40",
            imageName: "hatban",
            category: "식품"
        ),
        ShoppingItem(
            title: "[몬스터] 내 파드 과제 소울메이트",
            subtitle: "",
            price: "9,900원",
            originalPrice: "18,000원",
            rewardPoints: "토스프라임 693원 적립",
            buyersInfo: "54.9만명이 구경함 • 무료배송",
            badge: nil,
            timer: nil,
            imageName: "monster",
            category: "식품"
        ),
        ShoppingItem(
            title: "[비타오백] 두번째 파드 과제 소울메이트",
            subtitle: "",
            price: "12,900원",
            originalPrice: "40,000원",
            rewardPoints: "토스프라임 903원 적립",
            buyersInfo: "64.2만명이 구경함 • 무료배송",
            badge: "최저가보상+",
            timer: nil,
            imageName: "vita",
            category: "식품"
        ),
        ShoppingItem(
            title: "[닥터지] 내 피부는 언제쯤 좋아질까)",
            subtitle: "",
            price: "35,900원",
            originalPrice: "79,800원",
            rewardPoints: "토스프라임 2,513원 적립",
            buyersInfo: "93.9만명이 구경함 • 무료배송",
            badge: "최저가보상+",
            timer: nil,
            imageName: "drg",
            category: "뷰티"
        ),
        ShoppingItem(
            title: "[에어팟] 진짜 인생 필수품 이걸로 유툽보기 개꿀잼",
            subtitle: "",
            price: "400,000원",
            originalPrice: "500,000원",
            rewardPoints: "토스프라임 488원 적립",
            buyersInfo: "52.1만명이 구경함 • 무료배송",
            badge: "최저가보상★",
            timer: "00:40",
            imageName: "airpod",
            category: "전자제품"
        ),
        ShoppingItem(
            title: "[스트라이덱스] 피부야 좋아져랏 얍",
            subtitle: "",
            price: "40,000원",
            originalPrice: "45,000원",
            rewardPoints: "토스프라임 693원 적립",
            buyersInfo: "54.9만명이 구경함 • 무료배송",
            badge: nil,
            timer: nil,
            imageName: "stridex",
            category: "뷰티"
        ),
        ShoppingItem(
            title: "[애플워치] 최고급 만보기",
            subtitle: "",
            price: "550,000",
            originalPrice: "900,000원",
            rewardPoints: "토스프라임 903원 적립",
            buyersInfo: "64.2만명이 구경함 • 무료배송",
            badge: "최저가보상+",
            timer: nil,
            imageName: "applewatch",
            category: "전자제품"
        ),
        ShoppingItem(
            title: "[안경닦이] 안경보단 노트북 화면을 더 많이 닦는건 안비밀",
            subtitle: "",
            price: "5,900원",
            originalPrice: "10,000원",
            rewardPoints: "토스프라임 2,513원 적립",
            buyersInfo: "93.9만명이 구경함 • 무료배송",
            badge: "최저가보상+",
            timer: nil,
            imageName: "glasscloth",
            category: "의류"
        ),
        ShoppingItem(
            title: "[양말] 잘 빨아서 냄새 안남 진짜로",
            subtitle: "",
            price: "12,300원",
            originalPrice: "20,400원",
            rewardPoints: "토스프라임 903원 적립",
            buyersInfo: "64.2만명이 구경함 • 무료배송",
            badge: "최저가보상+",
            timer: nil,
            imageName: "socks",
            category: "의류"
        ),
        ShoppingItem(
            title: "[빽다방] 무슨 커피였게요~~~",
            subtitle: "",
            price: "4,000",
            originalPrice: "4,500원",
            rewardPoints: "토스프라임 2,513원 적립",
            buyersInfo: "93.9만명이 구경함 • 무료배송",
            badge: "최저가보상+",
            timer: nil,
            imageName: "bbaek",
            category: "식품"
        )
        
    ]
}
