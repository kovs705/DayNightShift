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
        case night                  // глубокая ночь
        
        case astroTwilightDawn      // начало синего часа
        case nautiTwilightDawn      // появляется полоса зари
        case civilTwilightDawn      // начало золотого часа
        /// case sunrise                // восход солнца
        
        case horizon                // солнце на горизонте
        
        ///case sunset                 // закат
        case civilTwilightDusk      // ещё светло - это время принято считать сумерками
        case nautiTwilightDusk      // уже включают городское освещение
        case astroTwilightDusk      // на улице стемнело и горизонт практически неразличим
        ///case dusk                   // темнота
    }
    
    
}
