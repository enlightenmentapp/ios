//
//  ENContentSearchTableViewController.swift
//  Enlightenment
//
//  Created by Paul Shapiro on 12/30/18.
//  Copyright (c) 2011-2019 Enlightenment of Tathagata. All rights reserved.
//

import Foundation
import UIKit

@objc class ContentSearchTableViewController: UITableViewController
{
	
	/// State restoration values.
	private enum RestorationKeys: String
	{
		case viewControllerTitle
		case searchControllerIsActive
		case searchBarText
		case searchBarIsFirstResponder
	}
	private struct SearchControllerRestorableState
	{
		var wasActive = false
		var wasFirstResponder = false
	}
	//
	private let cellReuseIdentifier = "cellReuseIdentifier"
	private var results = [ENDocument]()
	private var searchController: UISearchController!
	private var restoredState = SearchControllerRestorableState()
	private var model: ENAppContentModel!
	//
	//
	@objc init(withModel model: ENAppContentModel)
	{
		super.init(style: .plain)
		self.model = model
	}
	required init?(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
	//
	// Delegation - View
	override func viewDidLoad()
	{
		super.viewDidLoad()
		//
		self.tableView.delegate = self
		//
		self.searchController = UISearchController(searchResultsController: nil)
		self.searchController.searchResultsUpdater = self
		self.searchController.searchBar.placeholder = "Search Content"
		if #available(iOS 11.0, *) {
			self.navigationItem.searchController = self.searchController
			self.navigationItem.hidesSearchBarWhenScrolling = false
		} else {
			self.tableView.tableHeaderView = searchController.searchBar
		}
		self.searchController.dimsBackgroundDuringPresentation = false
		self.searchController.searchBar.delegate = self
		
		self.definesPresentationContext = true
	}
	//
	// Delegation - Table View
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
	{
		ENNavigation.navigate(to: self.results[indexPath.row], from: self, from: indexPath)
	}
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
	{
		return self.results.count
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		var cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
		if cell == nil {
			cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: cellReuseIdentifier)
		}
		let document = self.results[indexPath.row]
		cell!.textLabel!.text = document.title
		cell!.detailTextLabel!.text = document.detailText
		//
		return cell!
	}
	//
	// Delegation - View
	override func viewDidAppear(_ animated: Bool)
	{
		super.viewDidAppear(animated)
		if restoredState.wasActive {
			searchController.isActive = restoredState.wasActive
			restoredState.wasActive = false
			if restoredState.wasFirstResponder {
				searchController.searchBar.becomeFirstResponder()
				restoredState.wasFirstResponder = false
			}
		}
	}
}
extension ContentSearchTableViewController: UISearchBarDelegate
{
	func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
		searchBar.resignFirstResponder()
	}
	
}
extension ContentSearchTableViewController: UISearchResultsUpdating
{
	func updateSearchResults(for searchController: UISearchController)
	{
		let whitespaceCharacterSet = CharacterSet.whitespaces
		let strippedString = searchController.searchBar.text!.trimmingCharacters(in: whitespaceCharacterSet)
		// TODO: finalize whether we want to do exact text search or split into tokens as we're doing here
		let searchItems = strippedString.components(separatedBy: " ") as [String]
		let filteredResults = self.model.documents(matchingItems: searchItems)!
		self.results = filteredResults as! [ENDocument]
		self.tableView.reloadData()
	}
	
}
extension ContentSearchTableViewController
{
	override func encodeRestorableState(with coder: NSCoder)
	{
		super.encodeRestorableState(with: coder)

		coder.encode(navigationItem.title!, forKey: RestorationKeys.viewControllerTitle.rawValue)
		coder.encode(searchController.isActive, forKey: RestorationKeys.searchControllerIsActive.rawValue)
		coder.encode(searchController.searchBar.isFirstResponder, forKey: RestorationKeys.searchBarIsFirstResponder.rawValue)
		coder.encode(searchController.searchBar.text, forKey: RestorationKeys.searchBarText.rawValue)
	}
	
	override func decodeRestorableState(with coder: NSCoder)
	{
		super.decodeRestorableState(with: coder)
		
		guard let decodedTitle = coder.decodeObject(forKey: RestorationKeys.viewControllerTitle.rawValue) as? String else {
			fatalError("A title did not exist. In your app, handle this gracefully.")
		}
		navigationItem.title! = decodedTitle
		
		/** Restore the active state:
		We can't make the searchController active here since it's not part of the view
		hierarchy yet, instead we do it in viewWillAppear.
		*/
		restoredState.wasActive = coder.decodeBool(forKey: RestorationKeys.searchControllerIsActive.rawValue)
		
		/** Restore the first responder status:
		Like above, we can't make the searchController first responder here since it's not part of the view
		hierarchy yet, instead we do it in viewWillAppear.
		*/
		restoredState.wasFirstResponder = coder.decodeBool(forKey: RestorationKeys.searchBarIsFirstResponder.rawValue)
		
		// Restore the text in the search field.
		searchController.searchBar.text = coder.decodeObject(forKey: RestorationKeys.searchBarText.rawValue) as? String
	}
	
}
