//
//  GameListViewController.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import UIKit

final class GameListViewController: UIViewController {
    
    private enum Constants {
        static let gameListCellIdentifier = "gameListCell"
        static let gameListNib = "GameListCell"
    }
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var gameList: [Game] = []
    
    var presenter: GameListPresenterProtocol!
    
    
    
    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        presenter.viewDidiLoad()
    }
    
    // MARK: - Setup Methods
    private func setupTableView() {
        let gameListNib = UINib(nibName: Constants.gameListNib, bundle: nil)
        tableView.register(gameListNib, forCellReuseIdentifier: Constants.gameListCellIdentifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
    }
    
}

// MARK: - GameListViewProtocol
extension GameListViewController: GameListViewProtocol {
 
    func updateTableView(gameList: [Game]) {
        self.gameList.append(contentsOf: gameList)
        tableView.reloadData()
    }
}

// MARK: -
extension GameListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.gameListCellIdentifier, for: indexPath) as! GameListCell
        cell.setup(game: gameList[indexPath.row])
        return cell
    }
    
}
