import UIKit

class ViewController: UIViewController {

@IBOoutlet var tableView: UITableView!

var tasks = [String]()


  override func viewDidLoad(){
    super.viewDidLoad()

  }
  // Faça qualquer configuração após carregar a visualização.
}

extension ViewController: UITableViewDelegate {


  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    tableView.didSelectRow(at: indexPath, animated: true)
  }



  
}

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numbersOfRowsInSection section: Int) -> Int{
    return tasks.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

    cell.textLabel?.text = tasks[indexPath.row]



    return cell
  }



  
}