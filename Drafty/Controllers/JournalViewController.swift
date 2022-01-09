//
//  ViewController.swift
//  Drafty
//
//  Created by Michael Kalail on 12/11/21.
//

import UIKit

class JournalViewController: UITableViewController {
    
    let journalEntries = ["write here", "wrote here yesterday", "wrote here 2 days ago", "wrote quite a bit more here 3 days ago", "wrote loaaadds, had a lot to write and do and think about, and i put everything riiight, need to make list here 4 days ago", "didnt write much here 5 days ago", "wrote here 6 days ago", "wrote here 7 days ago", "kajsldfjaldskjflsdajlfjsdl jhad a productive day of writing in here.. wrote here 8 days ago", "wrote here 9 days ago", "wrote here 10 days ago", "wrote a huge long story here and this is also my first and oldest entry so should be on the bottom. klasjdf;lkdsajflkdsj lkasdfj laskdfjalskdf ;kl jfdljf lasdkjf l.. 11 days ago"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journalEntries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entries")
        
        //cell?.textLabel?.adjustsFontSizeToFitWidth = true
        
        cell?.textLabel?.text = journalEntries[indexPath.row]
        
        return cell!
    }
}

