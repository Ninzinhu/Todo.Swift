import UIKit

class ViewController: UIViewController {

@IBOoutlet var tableView: UITableView!


  override func viewDidLoad(){
    super.viewDidLoad()

  }
  // Faça qualquer configuração após carregar a visualização.
}

extension ViewController: UITableViewDelegate {


  func tableView( tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    tableView.didSelectRow(at: indexPath, animated: true)
  }



  
}

extension ViewController: UITableViewDataSource {

  
}