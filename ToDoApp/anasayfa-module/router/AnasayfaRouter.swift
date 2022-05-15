//
//  AnasayfaRouter.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

class AnasayfaRouter : PresenterToRouterAnasayfaProtocol {
    static func createModule(ref: ViewController) {
        let presenter = AnasayfaPresenter()
         
         ref.anasayfaPresenterNesnesi = presenter
         ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
         
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
    
    
}
