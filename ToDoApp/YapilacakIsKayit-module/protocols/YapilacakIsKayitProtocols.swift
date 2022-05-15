//
//  YapilacakIsKayitProtocols.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

protocol ViewToPresenterYapilacakIsKayitProtocol {
    var yapilacakIsKayitInteractor:PresenterToInteractorYapilacakIsKayitProtocol? {get set}
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakIsKayitProtocol {
    func kayitekle(yapilacak_is:String)
}

protocol PresenterToRouterYapilacakIsKayitProtocol {
    static func createModule(ref:YapilacakIsKayitVC)
}
