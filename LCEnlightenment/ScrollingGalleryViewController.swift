//
//  ScrollingGalleryViewController.swift
//  Enlightenment
//
//  Created by Paul Shapiro on 1/6/19.
//  Copyright © 2019 Enlightenment of Tathagata. All rights reserved.
//

import UIKit

class AGalleryPageViewController: UIViewController
{
	//
	// Properties
	var index: Int!
	var imageName: String!
	var caption: String!
	//
	let imageView = UIImageView()
	//
	// Lifecycle - Init
	init(index: Int, imageName: String, caption: String)
	{
		self.index = index
		self.imageName = imageName
		self.caption = caption
		//
		super.init(nibName: nil, bundle: nil)
		self.setup()
	}
	required init?(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
	//
	func setup()
	{
		do {
			self.imageView.image = UIImage(named: imageName)
			self.imageView.contentMode = .scaleAspectFit
			self.view.addSubview(self.imageView)
		}
	}
	//
	override func viewDidLayoutSubviews()
	{
		super.viewDidLayoutSubviews()
		self.imageView.frame = self.view.bounds // handle resizing on rotation
	}
}

class TathagataGalleryViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate
{
	static let imageNames: [String] =
	[
		"02_001.jpg",
		"lastscan1.jpg",
		"14.jpg",
		"19981029_1.jpg",
		"oxforf1997.jpg",
		"20000526_1.jpg",
		"20000524_3.jpg",
		"20000625_1.jpg",
		"20020619_1.jpg",
		"portrait_07.jpg",
		"portrait_08.jpg",
		"photo 003.jpg",
		"photo 123.jpg",
		"photo 231.jpg",
		"______ 033.jpg"
	]
	static let captions: [String] =
	[
		"Master Tathagata, Soyun, and David at Leicester Square.",
		"Tathagata in Bodh Gaya in 1994.",
		"India, 1997.",
		"Maharashtra Institute of Technology, 1998.",
		"At Oxford University in 1998.",
		"May 24, 2000.",
		"May 26, 2000.",
		"June 25, 2000 in Hyde Park, London.",
		"Barking, UK on June 19, 2002.",
		"Portrait from 2004.",
		"Portrait of Tathagata from 2006.",
		"Hollywood, 2007.",
		"Columbia University, 2007.",
		"New York University, 2007.",
		"Tathagata lecturing in Busan, 2007."
	]
	static let numPages = imageNames.count
	var pageViewController: UIPageViewController!
	var captionLabel: UILabel!
	var lastPendingViewControllerIndex: Int?
	//
	// Accessors - Factories
	func new_viewController(forIndex index: Int) -> AGalleryPageViewController
	{
		if (type(of: self).numPages == 0) || (index >= type(of: self).numPages) {
			fatalError("Unexpected index")
		}
		return AGalleryPageViewController(
			index: index,
			imageName: type(of: self).imageNames[index],
			caption: type(of: self).captions[index]
		)
	}
	//
	// Imperatives - Configuration
	func configureUI(withIndex index: Int)
	{
		self.captionLabel.text = type(of: self).captions[index]
	}
	//
	// Delegation - View
	override func viewDidLoad()
	{
		do {
			let controller = UIPageViewController(
				transitionStyle: .scroll,
				navigationOrientation: .horizontal,
				options: nil
			)
			controller.dataSource = self
			controller.delegate = self
			self.pageViewController = controller
			controller.view.translatesAutoresizingMaskIntoConstraints = false
			controller.view.backgroundColor = UIColor.gray
			self.view.addSubview(controller.view)
			self.addChild(controller)
			//
			self.pageViewController.setViewControllers(
				[self.new_viewController(forIndex: 0)],
				direction: .forward,
				animated: false,
				completion: nil
			)
		}
		do {
			let label = UILabel()
			label.autoresizingMask = [.flexibleTopMargin, .flexibleWidth]
			label.textColor = UIColor.white
			label.textAlignment = .center
			label.numberOfLines = 0
			label.backgroundColor = UIColor(white: 0, alpha: 0.2)
			label.font = UIFont.systemFont(ofSize: 15)
			label.shadowColor = UIColor(white: 0, alpha: 0.6)
			label.shadowOffset = CGSize(width: 0, height: 1)
			self.captionLabel = label
			self.view.addSubview(captionLabel)
		}
		self.configureUI(withIndex: 0)
	}
	//
	// Delegation - Layout
	override func viewDidLayoutSubviews()
	{
		super.viewDidLayoutSubviews()
		self.pageViewController.view.frame = self.view.bounds
		let captionLabel_h: CGFloat = 120
		self.captionLabel.frame = CGRect.init(x: 0, y: self.view.frame.size.height - captionLabel_h, width: self.view.frame.size.width, height: captionLabel_h)
	}
	//
	// Delegate - UIPageViewControllerDelegate
	func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
	{
		self.lastPendingViewControllerIndex = (pendingViewControllers.first! as! AGalleryPageViewController).index!
	}
	func pageViewController(
		_ pageViewController: UIPageViewController,
		didFinishAnimating finished: Bool,
		previousViewControllers: [UIViewController],
		transitionCompleted completed: Bool
	) {
		if completed {
			self.configureUI(withIndex: self.lastPendingViewControllerIndex!)
			self.lastPendingViewControllerIndex = nil
		}
	}
	//
	// Delegate - UIPageViewControllerDataSource
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
	{
		let aPageController = viewController as! AGalleryPageViewController
		let nextIndex = aPageController.index - 1
		if nextIndex < 0 {
			return nil
		}
		return self.new_viewController(forIndex: nextIndex)
	}
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
	{
		let aPageController = viewController as! AGalleryPageViewController
		let nextIndex = aPageController.index + 1
		if nextIndex == type(of: self).numPages {
			return nil
		}
		return self.new_viewController(forIndex: nextIndex)
	}
	func presentationCount(for pageViewController: UIPageViewController) -> Int
	{
		return -1 /* since we dont want to show anything in the page control */ // type(of: self).numPages
	}
	func presentationIndex(for pageViewController: UIPageViewController) -> Int
	{
		return 0
	}
	
}
