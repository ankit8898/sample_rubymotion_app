  class AppDelegate
    def application(application, didFinishLaunchingWithOptions:launchOptions)
    	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
      @window.makeKeyAndVisible    

      controller = TapController.alloc.initWithNibName(nil, bundle: nil)
      controller_other = OtherController.alloc.initWithNibName(nil, bundle: nil)
      nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
      nav_controller_o = UINavigationController.alloc.initWithRootViewController(controller_other)
      other_controller = OtherController.alloc.initWithNibName(nil, bundle: nil)

      tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
      tab_controller.viewControllers = [nav_controller,nav_controller_o]
      @window.rootViewController = tab_controller

      true
    end
  end
