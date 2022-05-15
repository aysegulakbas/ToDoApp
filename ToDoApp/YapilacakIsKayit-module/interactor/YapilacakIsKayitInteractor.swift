//
//  YapilacakIsKayitInteractor.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

class YapilacakIsKayitInteractor : PresenterToInteractorYapilacakIsKayitProtocol {
    let db : FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
        
    }
    func kayitekle(yapilacak_is: String) {
        db?.open()
        
        do{
            
            try db! .executeUpdate("INSERT INTO yapilacakisler (yapilacak_is) VALUES(?)", values: [yapilacak_is])
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
        db?.close()
    }
    
    
}
