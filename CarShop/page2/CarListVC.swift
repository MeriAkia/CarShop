//
//  CarListVC.swift
//  CarShop
//
//  Created by Meri Akiashvili on 03.01.22.
//

import UIKit

class CarListVC: UIViewController {
    
    @IBOutlet weak var goToCartButton: UIButton!
    @IBOutlet weak var totalNumber: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var carListTableView: UITableView!
    
    let image = UIImage()
    var carRawDataArray = [CarRawData]()
    var carsArray = [Cars]()
   // var carModelsArrays = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


//    func getDataFromWeb(){
//        let urlString = "https://private-anon-a41c950c16-carsapi1.apiary-mock.com/cars?fbclid=IwAR0wRAgw30gahMQTh1CZxZQf2lwSpp2VJRwsvDRDaxf_HGhMydrovMhgZV4"
//
//        let url = URL(string: urlString)
//        URLSession.shared.dataTask(with: url!){(data, _, _) in
//            guard let data = data else {return}
//            let result = try? JSONDecoder().decode([CarRawData].self, from: data)
//            if result != nil{
//               // self.carsArray = result!
//               // self.carModelsArrays = Array(Set(self.carsArray.map{$0.make})).sorted()
//
//                self.carRawDataArray = result!
//                for i in 0...self.carRawDataArray.count - 1 {
//                    let carItem = self.carRawDataArray[i]
//
//                    self.carsArray.append(Cars(year: carItem.year, id: carItem.id, horsepower: carItem.horsepower, make: carItem.make, model: carItem.model, price: carItem.price, img_url: carItem.img_url))
//                }
//
//                self.carModelsArrays = Array(Set(self.carsArray.map{$0.make})).sorted()
//
//                DispatchQueue.main.async {
//                    self.CarModelTableView.reloadData()
//                    self.activityIndicator.stopAnimating()
//                    self.activityIndicator.isHidden = true
//                }
//        }
//    }.resume()
//}



extension CarListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20 //carModelsArrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarListTableViewCell", for: indexPath) as! CarListTableViewCell
        cell.layer.cornerRadius = 20
        cell.layer.borderWidth = 1
//        let currentCarModel = carModelsArrays[indexPath.row]
//        cell.carModelNameLabel.text = currentCarModel
//        cell.carModelImageView.image = self.carModelLogos[currentCarModel] ?? UIImage()
//
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = UIStoryboard.init(name: "SpecificCarViewControllerStoryboard", bundle: Bundle.main).instantiateViewController(withIdentifier: "SpecificCarViewController") as? SpecificCarViewController
//        vc?.specificCarArray = self.carsArray.filter{$0.make == self.carModelsArrays[indexPath.row]}
//        
//        self.navigationController?.pushViewController(vc!, animated: true)
//        self.CarModelTableView.reloadData()
//    }
    
    

}
