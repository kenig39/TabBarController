import UIKit

class ViewController: UIViewController {
    
    var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(tapToTapBar), for: .touchUpInside)
    }
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }

    
    @objc func tapToTapBar(){
        let tabBArVc = UITabBarController()
        
        
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourViewControllers())
        let vc5 = UINavigationController(rootViewController: FifthViewControllers())
        
        vc1.title = "Home"
        vc2.title = "Settings"
        vc3.title = "About"
        vc4.title = "Preferens"
        vc5.title = "Gide"
        
        
        tabBArVc.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
        
        
        guard let items = tabBArVc.tabBar.items else {return}
        
        let images = ["house", "bell", "person.circle", "star" , "gear"]
        
        for i in 0..<items.count{
            items[i].badgeColor = .black
            items[i].badgeValue = "1"
            items[i].image = UIImage(systemName: images[i])
        }
        
       
        tabBArVc.modalPresentationStyle = .fullScreen
        present(tabBArVc, animated: true)
    }
}

class FirstViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Home"
    }
}

class SecondViewController :UIViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Bell"
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Person"
    }
}

class FourViewControllers: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "About"
    }
}
class FifthViewControllers: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        title = "Settings"
        
    }
}

