//
//  YapilacakIsDetayProtocols.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

protocol ViewToPresenterYapilacakIsDetayProtocol {
    var yapilacakIsDetayInteractor:PresenterToInteractorYapilacakIsDetayProtocol?{get set}
    func guncelle(kisi_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakIsDetayProtocol {
    func yapılacakIsGuncelle(kisi_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterYapilacakIsDetayProtocol {
    static func createModule(ref:YapilacakIsDetayVC)
}
