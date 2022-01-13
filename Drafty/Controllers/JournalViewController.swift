//
//  ViewController.swift
//  Drafty
//
//  Created by Michael Kalail on 12/11/21.
//

import UIKit

class JournalViewController: UITableViewController {
    
    //var journalEntries = ["write here", "wrote here yesterday", "wrote here 2 days ago", "wrote quite a bit more here 3 days ago", "wrote loaaadds, had a lot to write and do and think about, and i put everything riiight, need to make list here 4 days ago", "didnt write much here 5 days ago", "wrote here 6 days ago", "wrote here 7 days ago", "kajsldfjaldskjflsdajlfjsdl jhad a productive day of writing in here.. wrote here 8 days ago", "wrote here 9 days ago", "wrote here 10 days ago", "wrote a huge long story here and this is also my first and oldest entry so should be on the bottom. klasjdf;lkdsajflkdsj lkasdfj laskdfjalskdf ;kl jfdljf lasdkjf l.. 11 days ago"]
    
    var sessions: [Session] = [
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note"),
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k"),
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k"),
        
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k"),
        
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k"),
        
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggdfjkasj ffjdlasfj lorem ipsum doaldkjf lkajeriolk akllkdfj lorem lorem lorem lorem I stilll need to alternate colors noooooo hwlak fjldsj'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k"),
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k.. .also how do I make the oldest one appear at the bottommmm mmamfmsm mamfoam moma "),
        
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k.. .also how do I make the oldest one appear at the bottommmm mmamfmsm mamfoam moma, also how do I make the cursor automaticlly appear just slightly above the previous session and how to automaically subdivide sessoins by date "),
    
        Session(body: "testnote test note testnote test not testnoteeee tesssssstt note... long version super longggggg super super longgggg testing dynamic self sizing uitableview cell.. also how do I make this one kinda grey'? jlkdjfs;lkdaj; lkfjfjl ljaldksjf ljfasl k.. .also how do I make the oldest one appear at the bottommmm mmamfmsm mamfoam moma, also how do I make the cursor automaticlly appear just slightly above the previous session and how to automaically subdivide sessoins by date... oh and one more thing, how do I fix this detail issue and how do I make detail say the date the session was created")
    
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Session", for: indexPath)
        
        let item = sessions[indexPath.row]
        //let date = Date()
        
        //cell?.textLabel?.adjustsFontSizeToFitWidth = true
        
        cell.textLabel?.text = item.body
        //cell.detailTextLabel?.text = item.date
        
        if(indexPath.row % 2 == 0) {
                cell.backgroundColor = .black
        }
        else {
            cell.backgroundColor = .darkGray
        }
        
        return cell
    }
    //MARK
}

class ChatCell: UITableViewCell {
    lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        let icon = UIImage(named: "icons8-Sheep on Bike")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFit
        imageView.image = icon

        return imageView
    }()

    lazy var messageBackground: UIView = {
        let backgroundView = UIView()
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        backgroundView.layer.cornerRadius = 10
        return backgroundView
    }()

    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.backgroundColor = .clear
        label.textColor = .white

        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layoutViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layoutViews()
    }

    func layoutViews() {
        contentView.addSubview(iconImageView)
        contentView.addSubview(messageBackground)
        messageBackground.addSubview(messageLabel)

        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            iconImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            iconImageView.widthAnchor.constraint(equalToConstant: 50),
            iconImageView.heightAnchor.constraint(equalTo: iconImageView.widthAnchor),
            iconImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -5),
            messageBackground.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            messageBackground.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8),
            messageBackground.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 12),
            messageBackground.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -70),
            messageLabel.trailingAnchor.constraint(lessThanOrEqualTo: messageBackground.trailingAnchor, constant: -5),
            messageLabel.topAnchor.constraint(equalTo: messageBackground.topAnchor, constant: 5),
            messageLabel.bottomAnchor.constraint(equalTo: messageBackground.bottomAnchor, constant: -5),
            messageLabel.leadingAnchor.constraint(equalTo: messageBackground.leadingAnchor, constant: 5)
            ])
    }
}
