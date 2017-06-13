//
//  GameScheduleLogic.swift
//  Practice
//
//  Created by Sun Huanji on 16/9/15.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import Foundation
private let AD = 1 // 紀元後


public struct GameScheduleLogic {
    
    fileprivate enum SpringAutumn {
        /// 春分の日
        case spring
        
        /// 秋分の日
        case autumn
        
        var constant: Double {
            switch self {
            case .spring: return 20.69115
            case .autumn: return 23.09000
            }
        }
        
        /// 春分の日・秋分の日を計算する
        /// 参考：http://koyomi8.com/reki_doc/doc_0330.htm
        func calcDay(year: Int) -> Int {
            let x1: Double = Double(year - 2000) * 0.242194
            let x2: Int = Int(Double(year - 2000) / 4)
            return Int(constant + x1 - Double(x2))
        }
    }
    
    public init() {} // FIXME: static化した後はprivateにする
    
    /**
    *
    * 祝日になる日を判定する
    * (引数) year: Int, month: Int, day: Int
    * weekdayIndexはWeekdayのenumに該当する値(0...6)が入る
    * ※1. カレンダーロジックの参考：http://p-ho.net/index.php?page=2s2
    * ※2. 書き方（タプル）の参考：http://blog.kitoko552.com/entry/2015/06/17/213553
    * ※3. [Swift] 関数における引数/戻り値とタプルの関係：http://dev.classmethod.jp/smartphone/swift-function-tupsle/
    *
    */
    public func judgeGameDay(_ year: Int, month: Int, day: Int) -> Int {
//        
//        let cal = NSCalendar.currentCalendar()
//        guard let date = cal.dateWithEra(
//            AD, year: year, month: month, day: day, hour: 0, minute: 0, second: 0, nanosecond: 0) else {
//                fatalError() // FIXME: throwにしたほうがよい？
//        }


        
        /// 国民の祝日に関する法律（こくみんのしゅくじつにかんするほうりつ）は、
        /// 1948年（昭和23年）7月20日に公布・即日施行された日本の法律である。通称祝日法。
        /// See also: https://ja.wikipedia.org/wiki/国民の祝日に関する法律
        
        switch (year, month, day) {
            
            //日本ハム
        case (_, 9, 17...19):
            return 1
        case (_, 9, 7):
            return 1
        case (_, 9, 30):
            return 1
            //softbank
        case (_, 9, 26...28):
            return 2
            
            //楽天
        case (_, 9, 15):
            return 3
        case (_, 9, 20...22):
            return 3
            
            //ライオンズ
        case (_, 9, 2...4):
            return 4
        case (_, 9, 8...9):
            return 4
        case (_, 9, 14):
            return 4
            //オリックス
        case (_, 9, 1):
            return 5
        case (_, 9, 11):
            return 5
        case (_, 9, 24...25):
            return 5
        default:
            return 0
        }
    }
    
}
