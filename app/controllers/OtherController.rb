class OtherController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor
    self.title = 'Other'
    rightButton = UIBarButtonItem.alloc.initWithTitle("Goto Tap", style: UIBarButtonItemStyleBordered, target:self, action:'push_to_tap')
  self.navigationItem.rightBarButtonItem = rightButton
  end


  def push_to_tap
    new_controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(new_controller, animated: true)
  end

end


