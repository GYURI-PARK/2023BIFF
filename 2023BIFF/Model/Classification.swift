//
//  Classification.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import Foundation

struct Classification: Identifiable {
    
    let id: Int
    let title: String
    let description: String
}

class ClassificationList {
    static let classifications: [Classification] = [
        Classification(id: 1,
                       title: "개막작",
                       description: "2023 부산국제영화제 개막작"),
        Classification(id: 2,
                       title: "폐막작",
                       description: "2023 부산국제영화제 페막작"),
        Classification(id: 3,
                       title: "갈라 프레젠테이션",
                       description: "거장 감독의 신작 또는 세계적으로 주목 받는 화제작 가운데 감독이나 배우가 영화를 직접 소개하고 관객과의 만남을 갖는 섹션"),
        Classification(id: 4,
                       title: "아이콘",
                       description: "동시대를 대표하는 거장들의 신작을 소개하는 섹션"),
        Classification(id: 5,
                       title: "지석",
                       description: "세 편 이상의 장편영화를 만든 아시아 중견 감독의 신작 경쟁 부문으로, 최우수작 두 편을 선정하여 지석상을 수여한다. 지석상은 아시아영화의 성장과 지원에 헌신해 온 고(故) 김지석 수석 프로그래머의 뜻을 기억하기 위해 신설되었다."),
        Classification(id: 6,
                       title: "아시아영화의 창",
                       description: "아시아의 중견감독들과 신인감독들의 다양한 시각과 스타일을 엿볼 수 있는 신작 및 화제작을 소개하는 섹션"),
        Classification(id: 7,
                       title: "뉴 커런츠",
                       description: "아시아 영화의 미래를 이끌 신인 감독들의 첫 번째 또는 두 번째 장편 경쟁 부문으로, 최우수작 두 편을 선정하여 뉴 커런츠상을 수여한다."),
        Classification(id: 8,
                       title: "한국영화의 오늘 - 스페셜프리미어",
                       description: "특별한 대중적 매력과 위상을 지닌 동시대 한국 주류 상업 영화의 최신작 및 대표작을 프리미어로 상영하는 섹션"),
        Classification(id: 9,
                       title: "한국영화의 오늘 - 파노라마",
                       description: "동시대 한국영화의 역량과 흐름을 만끽할 수 있는 그해의 다양한 대표작 및 최신작을 선보이는 섹션"),
        Classification(id: 10,
                       title: "한국영화의 오늘 - 비전",
                       description: "뛰어난 작품성과 독창적 비전을 지닌 한국독립영화 최신작을 선보이는 섹션"),
        Classification(id: 11,
                       title: "월드 시네마",
                       description: "비아시아권 중견 작가들과 신인 감독들의 신작 및 유수 국제영화제 수상작을 포함하여 한 해 세계 영화의 전체적인 흐름을 조망할 수 있는 섹션"),
        Classification(id: 12,
                       title: "플래시 포워드",
                       description: "독창적인 영화 세계를 선보인 비아시아권 신인 감독들의 첫 번째 혹은 두 번째 장편을 소개하는 부문으로, 관객 투표를 통해 플래시 포워드상을 수여한다."),
        Classification(id: 13,
                       title: "와이드 앵글 - 한국 단편 경쟁",
                       description: "영화의 시선을 넓혀 색다르고 차별화된 비전을 보여주는 단편영화와 다큐멘터리를 모아 선보이는 섹션"),
        Classification(id: 14,
                       title: "와이드 앵글 - 아시아 단편 경쟁",
                       description: "영화의 시선을 넓혀 색다르고 차별화된 비전을 보여주는 단편영화와 다큐멘터리를 모아 선보이는 섹션"),
        Classification(id: 15,
                       title: "와이드 앵글 - 다큐멘터리 경쟁",
                       description: "영화의 시선을 넓혀 색다르고 차별화된 비전을 보여주는 단편영화와 다큐멘터리를 모아 선보이는 섹션"),
        Classification(id: 16,
                       title: "오픈 시네마",
                       description: "작품성과 대중성을 겸비한 신작 및 국제적인 관심을 모은 화제작을 영화의전당 야외극장에서 상영한다."),
        Classification(id: 17,
                       title: "미드나잇 패션",
                       description: "작품성과 오락성을 겸비한 호러, 사이언스 픽션, 컬트영화를 신작 위주로 소개하는 부문"),
        Classification(id: 18,
                       title: "온 스크린",
                       description: "영화의 확장된 흐름과 가치를 포괄하는, 그 해 최신의 드라마 시리즈 화제작을 상영하는 부문"),
        Classification(id: 19,
                       title: "특별기획 프로그램 Ⅰ - 주윤발의 영웅본색 周潤發之英雄風範",
                       description: "‘주윤발의 영웅본색’에서는 주윤발 배우의 대표작 두 편과 올해의 신작을 포함하여, 총 세 편의 영화를 상영한다. 올해의 아시아영화인상 수상자인 주윤발은 범아시아적 주윤발 신드롬을 불러일으킨 우리 시대의 아이콘이다. 1980년대와 2000년대, 그리고 2020년대에 제작된 이 영화들에서 각기 다른 색깔의 영웅을 보여주는 주윤발의 놀라운 연기 스펙트럼을 직접 확인하시기 바란다."),
        Classification(id: 20,
                       title: "특별기획 프로그램 Ⅱ - 코리안 아메리칸 특별전: 코리안 디아스포라",
                       description: "올해 특별기획 프로그램 Ⅱ은 ‘코리안 아메리칸 특별전: 코리안 디아스포라’다. OTT 플랫폼의 급성장과 함께 한류가 전 세계적으로 퍼지기 시작할 즈음에 할리우드에서도 재미교포영화인들을 주목하기 시작 했다. 이번 특별전을 통해 이들의 작품 세계를 심도 있게 들여다 보며 그들이 차지하고 있는 미국영화계에서의 위치를 재조명 할 수 있는 계기를 마련하고자 한다."),
        Classification(id: 21,
                       title: "특별기획 프로그램 Ⅲ - 인도네시아 영화의 르네상스",
                       description: "올해 특별기획 프로그램 Ⅲ는 ‘인도네시아 영화의 르네상스’다. 인도네시아는 최근 흥미로운 영화들을 다수 배출하며 강력한 모멘텀을 형성하고 있다. 다양한 장르 속 캐릭터들의 향연이 돋보이는 영화들과 첫 장편영화를 준비 중인 신인 감독들의 단편을 통해 아시아 영화산업의 주역으로 급부상하고 있는 인도네시아를 주목한다."),
        Classification(id: 22,
                       title: "특별상영",
                       description: "2023 부산국제영화제 특별상영작")
    ]
}
