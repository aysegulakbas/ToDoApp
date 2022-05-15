//
//  YapilacakIsDetayVC.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import UIKit

class YapilacakIsDetayVC: UIViewController {

    @IBOutlet weak var tfYapilacakIs: UITextField!
    var iş : YapilacakIsler?
    var yapilacakIsDetayPresnterNesnesi:ViewToPresenterYapilacakIsDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacakIsDetayRouter.createModule(ref: self)
        
        if let İ = iş {
            tfYapilacakIs.text = İ.yapilacak_is
        }

        
    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yi = tfYapilacakIs.text,let İ = iş {
            yapilacakIsDetayPresnterNesnesi?.guncelle(kisi_id: İ.kisi_id!, yapilacak_is: yi)
            
        }
    }
    
}
