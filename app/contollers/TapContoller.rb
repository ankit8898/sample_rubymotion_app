class TapController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @label = for_label
    self.view.addSubview @label
    self.title = "Saturday (#{self.navigationController.viewControllers.count})"
    rightButton = UIBarButtonItem.alloc.initWithTitle("Push", style: UIBarButtonItemStyleBordered, target: self, action:'push')
    self.navigationItem.rightBarButtonItem = rightButton
  end

  def push
    new_controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(new_controller, animated: true)
  end

  def for_label
    label = UILabel.alloc.initWithFrame(CGRectZero)
    label.text = "Saturday"
    label.sizeToFit
    label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    label
  end
end


