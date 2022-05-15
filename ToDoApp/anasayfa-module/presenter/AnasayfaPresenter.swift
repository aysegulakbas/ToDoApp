//
//  AnasayfaPresenter.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func IsleriAl() {
        anasayfaInteractor?.tumIsleriAl()
    }
    
    func ara(Kelime: String) {
        anasayfaInteractor?.IsleriAra(Kelime: Kelime)
    }
    
    
    func sil(kisi_id: Int) {
        anasayfaInteractor?.IsSil(kisi_id: kisi_id)
        
    }
}

extension AnasayfaPresenter: InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi: Array<YapilacakIsler>) {
        anasayfaView?.viweVeriGonder(yapilacaklarListesi: yapilacaklarListesi)
    }
}
