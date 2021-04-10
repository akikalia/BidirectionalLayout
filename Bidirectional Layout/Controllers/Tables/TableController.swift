//
//  TableController.swift
//  Bidirectional Layout
//
//  Created by Alexsandre kikalia on 12/22/20.
//


import UIKit

class TableController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "BlueCell", bundle: nil), forCellReuseIdentifier: "BlueCell")
        tableView.register(UINib(nibName: "RedCell", bundle: nil), forCellReuseIdentifier: "RedCell")
        tableView.register(UINib(nibName: "YellowCollectionCell", bundle: nil), forCellReuseIdentifier: "YellowCollectionCell")
        tableView.showsVerticalScrollIndicator = false
    }
}

extension TableController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section < 3 {
            return 1
        }
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "BlueCell", for: indexPath)
            return cell
        } else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "YellowCollectionCell", for: indexPath)
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "RedCell", for: indexPath)
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 132
        }else if indexPath.section == 2 {
            return 154
        } else {
            return 88
        }
    }
    
}
