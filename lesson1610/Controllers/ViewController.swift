//
//  ViewController.swift
//  lesson1610
//
//  Created by Peter on 16.10.2023.
//

import UIKit

class ViewController: UIViewController {

    let data = ["aaa", "bbb", "ccc", "ddd"]
    
    private lazy var tableView: UITableView = {
        
        let table = UITableView(frame: .zero)
        table.register(MainCell.self, forCellReuseIdentifier: MainCell.identifier)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    override func loadView() {
        super.loadView()
        title = "asasasas"
    }
   
    private func configureUI() {
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(data[indexPath.row])
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainCell.identifier) 
                as? MainCell else { return UITableViewCell() }
        
        cell.configure(title: data[indexPath.row])
        
        return cell
    }
    
    
    
}
