//
//  AnasayfaInteractor.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import Foundation

class AnasayfaInteractor:PresenterToInteractorAnasayfaProtocol {
   
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db : FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
        
    }
    
    func tumIsleriAl() {
        db?.open()
        var liste = [YapilacakIsler]()
        do{
            
            let rs = try db! .executeQuery("SELECT * FROM yapilacakisler", values: nil)
            
            while rs.next(){
                let yapılacakIs = YapilacakIsler(kisi_id:Int(rs.string(forColumn: "kisi_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(yapılacakIs)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
        db?.close()    }
    
    func IsleriAra(Kelime: String) {
        db?.open()
        var liste = [YapilacakIsler]()
        do{
            
            let rs = try db! .executeQuery("SELECT * FROM yapilacakisler WHERE yapilacak_is like '%\(Kelime)%'", values: nil)
            
            while rs.next(){
                let yapılacakIs = YapilacakIsler(kisi_id:Int(rs.string(forColumn: "kisi_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(yapılacakIs)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
        db?.close()
    }
    
    func IsSil(kisi_id: Int) {
        db?.open()
        
        do{
            
            try db! .executeUpdate("DELETE FROM yapilacakisler WHERE kisi_id = ?", values: [kisi_id])
            
            tumIsleriAl()
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
        db?.close()
    }
}
