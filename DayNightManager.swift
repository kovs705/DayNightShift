//
//  DayNightManager.swift
//  DayNightShift
//
//  Created by Kovs705 on 03.02.2024.
//

import Foundation

@objc class DayNightManager: NSObject {
    static let times: [NSInteger] = [
        // здесь будем хранить время в миллисекундах/минутах
    ]
    
    /// https://ru.wikipedia.org/wiki/Сумерки
    enum TimeTypes {
        case night           // глубокая ночь
        
        case dawn            // начало рассвета, солнце под горизонтом
        case twilightMorning // сумерки перед восходом солнца
        case sunrise         // восход солнца
        
        
        
        
    }
}
