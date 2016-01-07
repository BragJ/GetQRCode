# KiWi

Wifi sharing app... 

1
//view controller////

override internal func viewDidLoad()

override internal func didReceiveMemoryWarning()

internal func getNetworkName() -> String?

完成了一下的功能
1. 产生了一个 networkLabel: UILabel!
2. 获取ssid
3. 将获取到的wifi的ssid赋给 networkLabel


2
//EnterPassViewController//

@IBOutlet internal var enteredPassword: UITextField!

internal let networkName: String

@IBAction internal func savePassword(sender: UIButton)

override internal func viewDidLoad()

override internal func didReceiveMemoryWarning()

完成的功能
1. 建立enteredPassword: UITextField
2. 建立@IBAction func savePassword(sender: UIButton
3. 并将数据存储起来



#3 
// Keychain // 主要用于用户比较私密和敏感的信息， 
public class func set(key: String, value: String) -> Bool

public class func set(key: String, value: NSData) -> Bool

public class func get(key: String) -> NSString?

public class func getData(key: String) -> NSData?

public class func delete(key: String) -> Bool

public class func clear() -> Bool

完成的功能


1.



下一步要完成的工作： 
1. 在storybord中加入二维码生成的界面
2. 

