//
//  YapilacakIsKayitPresenter.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

class YapilacakIsKayitPresenter : ViewToPresenterYapilacakIsKayitProtocol {
    
    var yapilacakIsKayitInteractor : PresenterToInteractorYapilacakIsKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        yapilacakIsKayitInteractor?.kayitekle(yapilacak_is: yapilacak_is)
    }
}
