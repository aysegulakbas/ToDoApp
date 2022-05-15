//
//  YapilacakIsKayitRouter.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

class YapilacakIsKayitRouter : PresenterToRouterYapilacakIsKayitProtocol {
    static func createModule(ref: YapilacakIsKayitVC) {
        ref.yapilacakIsKayitPresenterNesnesi = YapilacakIsKayitPresenter()
        ref.yapilacakIsKayitPresenterNesnesi?.yapilacakIsKayitInteractor = YapilacakIsKayitInteractor()
    }
}
