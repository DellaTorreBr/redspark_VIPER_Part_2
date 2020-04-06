//
//  GameListCell.swift
//  Games
//
//  Created by Andre M. Della Torre on 06/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import UIKit

final class GameListCell: UITableViewCell {

    @IBOutlet weak var imageGame: UIImageView!
    @IBOutlet weak var labelGameTitle: UILabel!
    @IBOutlet weak var labelGameReleased: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(game: Game) {
        imageGame.image = UIImage(named: game.imageName)
        labelGameTitle.text = game.title
        labelGameReleased.text = game.released
    }
    
}
