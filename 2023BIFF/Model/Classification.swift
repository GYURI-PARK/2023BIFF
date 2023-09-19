//
//  Classification.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import Foundation

class Classification: Identifiable {
    let id: Int
    @Published var title: String
    @Published var description: String
    @Published var movieTitle: [String]
    @Published var movieEng: [String]
    @Published var directorNm: [String]
    @Published var directorEng: [String]
    @Published var runningTime: [Int]
    
    init(id: Int, title: String, description: String, movieTitle: [String], movieEng: [String], directorNm: [String], directorEng: [String], runningTime: [Int]) {
        self.id = id
        self.title = title
        self.description = description
        self.movieTitle = movieTitle
        self.movieEng = movieEng
        self.directorNm = directorNm
        self.directorEng = directorEng
        self.runningTime = runningTime
    }
}

class ClassificationList {
    static let classifications: [Classification] = [
        Classification(id: 1,
                       title: "개막작",
                       description: "2023 부산국제영화제 개막작",
                       movieTitle: ["한국이 싫어서"],
                       movieEng: ["Because I Hate Korea"],
                       directorNm: ["장건재"],
                       directorEng: ["JANG Kun-jae"],
                       runningTime: [106]),
        Classification(id: 2,
                       title: "폐막작",
                       description: "2023 부산국제영화제 페막작",
                       movieTitle: ["영화의 황제"],
                       movieEng: ["The Movie Emperor"],
                       directorNm: ["닝하오"],
                       directorEng: ["NING Hao"],
                       runningTime: [125]),
        Classification(id: 3,
                       title: "갈라 프레젠테이션",
                       description: "거장 감독의 신작 또는 세계적으로 주목 받는 화제작 가운데 감독이나 배우가 영화를 직접 소개하고 관객과의 만남을 갖는 섹션",
                       movieTitle: ["괴물", "녹야", "더 비스트"],
                       movieEng: ["Monster", "Green Night", "The Beast"],
                       directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                       directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
                       runningTime: [126, 92, 146]),
                Classification(id: 4,
                               title: "아이콘",
                               description: "동시대를 대표하는 거장들의 신작을 소개하는 섹션",
                               movieTitle: ["가여운 것들", "공드리의 솔루션북", "나의 올드 오크", "납치", "더 킬러", "라스트 썸머", "마른 풀에 관하여", "메뉴의 즐거움 - 트와그로 가족", "물안에서", "뮤직", "바튼 아카데미", "백탑지광", "북두칠성", "빔 벤더스의 안젤름 3D", "악은 존재하지 않는다", "엘레지", "우리의 하루", "유레카", "유령들의 초상", "지구 종말이 오더라도 너무 큰 기대는 말라", "찬란한 내일로", "청춘(봄)", "추락의 해부", "클로즈 유어 아이즈", "키메라", "파리 아다망에서 만난 사람들", "폴른 리브스", "푸른 장벽", "프렌치 수프", "호수의 깊은 진실"],
                               movieEng: ["Poor Things", "The Book of Solutions", "The Old Oak", "Kidnapped", "The Killer", "Last Summer", "About Dry Grasses", "Menus Plaisirs - Les Troisgros", "IN WATER", "Music", "The Holdovers", "The Shadowless Tower", "The Plough", "Anselm", "Evil Does Not Exist", "Elegies", "IN OUR DAY", "Eureka", "Pictures of Ghosts", "Do Not Expect Too Much from the End of the World", "A Brighter Tomorrow", "Youth(Spring)", "Anatomy of a Fall", "Close Your Eyes", "La Chimera", "On the Adamant", "Fallen Leaves", "Green Border", "The Pot-au-Feu", "Essential Truths of the Lake"],
                               directorNm: ["요르고스 란티모스", "미셸 공드리", "켄 로치", "마르코 벨로키오", "데이빗 핀처", "카트린느 브레야", "누리 빌게 제일란", "프레데릭 와이즈먼", "홍상수", "앙겔라 샤넬렉", "알렉산더 페인", "장률", "필립 가렐", "빔 벤더스", "하마구치 류스케", "허안화", "홍상수", "리산드로 알론조", "클레버 멘도사 필루", "라두 주데", "난니 모레티", "왕빙", "쥐스틴 트리에", "빅토르 에리세", "알리체 로바허", "니콜라 필리베르", "아키 카우리스마키", "아그네츠카 홀란드", "트란 안 홍", "라브 디아즈"],
                               directorEng: ["Yorgos LANTHIMOS", "Michel GONDRY", "Ken LOACH", "Marco BELLOCCHIO", "David FINCHER", "Catherine BREILLAT", "Nuri BILGE CEYLAN", "Frederick WISEMAN", "HONG Sangsoo", "Angela SCHANELEC", "Alexander PAYNE", "ZHANG Lu", "Philippe GARREL", "Wim WENDERS", " HAMAGUCHI Ryusuke", "Ann HUI", "HONG Sangsoo", "Lisandro ALONSO", "Kleber MENDONÇA FILHO", "Radu JUDE", "Nanni MORETTI", "WANG Bing", "Justine TRIET", "Víctor ERICE", "Alice ROHRWACHER", "Nicolas PHILIBERT", "Aki KAURISMÄKI","Agnieszka HOLLAND", "TRAN Anh Hung", "Lav DIAZ"],
                               runningTime: [141, 102, 113, 134, 113, 103, 197, 240, 61, 108, 133, 144, 95, 94, 106, 102, 83, 146, 93, 163, 95, 215, 150, 169, 132, 109, 81, 152, 135, 215]),
                Classification(id: 5,
                               title: "지석",
                               description: "세 편 이상의 장편영화를 만든 아시아 중견 감독의 신작 경쟁 부문",
                               movieTitle: ["가스퍼의 24시간", "그녀에게", "달", "도이 보이", "모로", "신부 납치", "이 영화의 끝에서", "이치코", "자서전 비슷한 것", "파라다이스"],
                               movieEng: ["24 Hours with Gaspar", "Blesser", "The Moon", "Doi Boy", "Moro", "Bride Kidnapping", "At the End of the Flim", "Ichiko", "Something Like an Autobiography", "Paradise"],
                               directorNm: ["요셉 앙기 노엔", "이상철", "이시이 유야", "논타왓 눔벤차폰", "브리얀테 멘도사", "미를란 압디칼리코프", "안선경", "도다 아키히로", "모스토파 사르와르 파루키", "프라사나 비타나게"],
                               directorEng: ["Yosep Anggi NOEN", "LEE Sangcheol", "ISHII Yuya", "Nontawat NUMBENCHAPOL", "Brillante MENDOZA", "Mirlan ABDYKALYKOV", "AHN Sunkyoung", "TODA Akihiro", "Mostofa Sarwar FAROOKI", "Prasanna VITHANAGE"],
                               runningTime: [98, 105, 144, 99, 80, 80, 175, 125, 82, 93]),
                Classification(id: 6,
                               title: "아시아영화의 창",
                               description: "아시아의 중견감독들과 신인감독들의 다양한 시각과 스타일을 엿볼 수 있는 신작 및 화제작을 소개하는 섹션",
                               movieTitle: ["괴물", "녹야", "더 비스트"],
                               movieEng: ["Monster", "Green Night", "The Beast"],
                               directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                               directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
                               runningTime: [126, 92, 146]),
                Classification(id: 7,
                               title: "뉴 커런츠",
                               description: "아시아 영화의 미래를 이끌 신인 감독들의 첫 번째 또는 두 번째 장편 경쟁 부문",
                               movieTitle: ["괴물", "녹야", "더 비스트"],
                               movieEng: ["Monster", "Green Night", "The Beast"],
                               directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                               directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
                               runningTime: [126, 92, 146]),
                Classification(id: 8,
                               title: "한국영화의 오늘 - 스페셜프리미어",
                               description: "특별한 대중적 매력과 위상을 지닌 동시대 한국 주류 상업 영화의 최신작 및 대표작을 프리미어로 상영하는 섹션",
                               movieTitle: ["괴물", "녹야", "더 비스트"],
                               movieEng: ["Monster", "Green Night", "The Beast"],
                               directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                               directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
                               runningTime: [126, 92, 146]),
                Classification(id: 9,
                               title: "한국영화의 오늘 - 파노라마",
                               description: "동시대 한국영화의 역량과 흐름을 만끽할 수 있는 그해의 다양한 대표작 및 최신작을 선보이는 섹션",
                               movieTitle: ["괴물", "녹야", "더 비스트"],
                               movieEng: ["Monster", "Green Night", "The Beast"],
                               directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                               directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
                               runningTime: [126, 92, 146]),
                Classification(id: 10,
                               title: "한국영화의 오늘 - 비전",
                               description: "뛰어난 작품성과 독창적 비전을 지닌 한국독립영화 최신작을 선보이는 섹션",
                               movieTitle: ["괴물", "녹야", "더 비스트"],
                               movieEng: ["Monster", "Green Night", "The Beast"],
                               directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                               directorEng: ["Yorgos LANTHIMOS", "Michel GONDRY", "Bertrand BONELLO"],
                               runningTime: [126, 92, 146]),
                Classification(id: 11,
                               title: "월드 시네마",
                               description: "비아시아권 중견 작가들과 신인 감독들의 신작 및 유수 국제영화제 수상작을 포함하여 한 해 세계 영화의 전체적인 흐름을 조망할 수 있는 섹션",
                               movieTitle: ["괴물", "녹야", "더 비스트"],
                               movieEng: ["Monster", "Green Night", "The Beast"],
                               directorNm: ["고레에다 히로카즈", "한슈아이", "베르트랑 보넬로"],
                               directorEng: ["KORE-EDA Hirokazu", "HAN Shuai", "Bertrand BONELLO"],
                               runningTime: [126, 92, 146]),
        //        Classification(id: 12,
        //                       title: "플래시 포워드",
        //                       description: "독창적인 영화 세계를 선보인 비아시아권 신인 감독들의 첫 번째 혹은 두 번째 장편을 소개하는 부문"),
        //        Classification(id: 13,
        //                       title: "와이드 앵글 - 한국 단편 경쟁",
        //                       description: "영화의 시선을 넓혀 색다르고 차별화된 비전을 보여주는 단편영화와 다큐멘터리를 모아 선보이는 섹션"),
        //        Classification(id: 14,
        //                       title: "와이드 앵글 - 아시아 단편 경쟁",
        //                       description: "영화의 시선을 넓혀 색다르고 차별화된 비전을 보여주는 단편영화와 다큐멘터리를 모아 선보이는 섹션"),
        //        Classification(id: 15,
        //                       title: "와이드 앵글 - 다큐멘터리 경쟁",
        //                       description: "영화의 시선을 넓혀 색다르고 차별화된 비전을 보여주는 단편영화와 다큐멘터리를 모아 선보이는 섹션"),
        //        Classification(id: 16,
        //                       title: "오픈 시네마",
        //                       description: "작품성과 대중성을 겸비한 신작 및 국제적인 관심을 모은 화제작을 영화의전당 야외극장에서 상영"),
        //        Classification(id: 17,
        //                       title: "미드나잇 패션",
        //                       description: "작품성과 오락성을 겸비한 호러, 사이언스 픽션, 컬트영화를 신작 위주로 소개하는 부문"),
        //        Classification(id: 18,
        //                       title: "온 스크린",
        //                       description: "영화의 확장된 흐름과 가치를 포괄하는, 그 해 최신의 드라마 시리즈 화제작을 상영하는 부문"),
        //        Classification(id: 19,
        //                       title: "특별기획 프로그램 Ⅰ - 주윤발의 영웅본색 周潤發之英雄風範",
        //                       description: "‘주윤발의 영웅본색’에서는 주윤발 배우의 대표작 두 편과 올해의 신작을 포함하여, 총 세 편의 영화를 상영"),
        //        Classification(id: 20,
        //                       title: "특별기획 프로그램 Ⅱ - 코리안 아메리칸 특별전: 코리안 디아스포라",
        //                       description: "올해 특별기획 프로그램 Ⅱ은 ‘코리안 아메리칸 특별전: 코리안 디아스포라’다."),
        //        Classification(id: 21,
        //                       title: "특별기획 프로그램 Ⅲ - 인도네시아 영화의 르네상스",
        //                       description: "올해 특별기획 프로그램 Ⅲ는 ‘인도네시아 영화의 르네상스’다."),
        //        Classification(id: 22,
        //                       title: "특별상영",
        //                       description: "2023 부산국제영화제 특별상영작")
    ]
}
