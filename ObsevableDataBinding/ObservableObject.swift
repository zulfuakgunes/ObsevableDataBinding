//
//  ObservableObject.swift
//  ObsevableDataBinding
//
//  Created by Zülfü Akgüneş on 26.07.2023.
//

import Foundation

final class ObsevableObject<T>{
    var value: T?
    
    var listener: ((T?) -> Void)?
    
    init(value: T? = nil) {
        self.value = value
    }
    
    func binding(_ listener: @escaping (T?) -> Void){
        listener(value)
        
        self.listener = listener
        
    }
}
