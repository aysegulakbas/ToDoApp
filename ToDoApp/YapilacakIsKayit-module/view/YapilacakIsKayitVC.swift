//
//  YapilacakIsKayitVC.swift
//  ToDoApp
//
//  Created by aysegul on 14.05.2022.
//

import UIKit

class YapilacakIsKayitVC: UIViewController {

    
    @IBOutlet weak var tfYapilacakIs: UITextField!
    var yapilacakIsKayitPresenterNesnesi:ViewToPresenterYapilacakIsKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacakIsKayitRouter.createModule(ref: self)

       
    }
    

    @IBAction func buttonEkle(_ sender: Any) {
        if let yi = tfYapilacakIs.text {
            yapilacakIsKayitPresenterNesnesi?.ekle(yapilacak_is: yi)
           
            
        }
    }
    

}
