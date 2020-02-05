//
//  BookInfoVC.swift
//  BookList
//
//  Created by Rusydi Yusof on 05/02/2020.
//  Copyright © 2020 Rusydi Yusof. All rights reserved.
//

import UIKit

class BookInfoVC: UIViewController {
    
    var coverBook = ""
    var titleBook = ""
    
    @IBOutlet weak var bookCoverImage: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Book Info"
        navigationController?.navigationBar.tintColor = UIColor.white
        bookCoverImage.image = UIImage(named: coverBook)
        bookTitle.text = titleBook

    }
    
    func customAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")

              case .cancel:
                    print("cancel")

              case .destructive:
                    print("destructive")
                
              default:
                return
        }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func readButtonDidTapped(_ sender: Any) {
        customAlert(title: "Read Confirmation", message: "Mark this book as read?")
    }
    
    @IBAction func deleteButtonDidTapped(_ sender: Any) {
        customAlert(title: "Delete Confirmation", message: "Delete this book?" )
    }
    
    @IBAction func writeButtonDidTapped(_ sender: Any) {
        customAlert(title: "Share Confirmation" , message: "Share this book?" )
    }
    
}
