//
//  ObservableObject.swift
//  ObsevableDataBinding
//
//  Created by Zülfü Akgüneş on 26.07.2023.
//

import Foundation

final class ObservableObject<T>{
    var value: T {
        didSet{
            listener?(value)
        }
    }
    
    var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func binding(_ listener: @escaping (T) -> Void){
        listener(value)
        
        self.listener = listener
        
    }
}
