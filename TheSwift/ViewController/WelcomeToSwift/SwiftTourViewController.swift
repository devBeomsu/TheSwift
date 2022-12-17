//
//  SwiftTourViewController.swift
//  TheSwift
//
//  Created by Steve on 2022/12/18.
//

import UIKit

class SwiftTourViewController: UIViewController {
    
    enum Section {
        case main
    }
    
    typealias Item = SwiftTour
    
    var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    let swiftTourList: [SwiftTour] = SwiftTour.list
    
    let colors: [UIColor] = [.systemIndigo, .systemGreen, .systemBrown, .systemTeal, .systemPurple, .systemOrange, .systemBlue, .gray, .systemRed]

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "A Swift Tour"
        
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SwiftTourCell", for: indexPath) as? SwiftTourCell else { return nil }
            cell.configure(item)
            cell.backgroundColor = self.colors[indexPath.item]
            
            return cell
        })
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(swiftTourList, toSection: .main)
        dataSource.apply(snapshot)
        
        collectionView.collectionViewLayout = layout()
        collectionView.delegate = self
        
        pageControl.numberOfPages = swiftTourList.count
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPagingCentered
        section.interGroupSpacing = 13
        
        section.visibleItemsInvalidationHandler = { visibleItems, scrollOffset, layoutEnvironment in
            let index = Int((scrollOffset.x / layoutEnvironment.container.contentSize.width).rounded(.up))
            self.pageControl.currentPage = index
        }
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}

extension SwiftTourViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let swiftTour = swiftTourList[indexPath.item]
        print(">>> Selected: \(swiftTour.title)")
        
        switch indexPath.item {
        case 0:
            let storyboard = UIStoryboard(name: "SimpleValues", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "SimpleValuesViewController") as! SimpleValuesViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 1:
            let storyboard = UIStoryboard(name: "ControlFlow", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "ControlFlowViewController") as! ControlFlowViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 2:
            let storyboard = UIStoryboard(name: "FuctionsAndClosures", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "FuctionsAndClosuresViewController") as! FuctionsAndClosuresViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 3:
            let storyboard = UIStoryboard(name: "ObjectsAndClasses", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "ObjectsAndClassesViewController") as! ObjectsAndClassesViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 4:
            let storyboard = UIStoryboard(name: "EnumerationsAndStructures", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "EnumerationsAndStructuresViewController") as! EnumerationsAndStructuresViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 5:
            let storyboard = UIStoryboard(name: "Concurrency", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "ConcurrencyViewController") as! ConcurrencyViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 6:
            let storyboard = UIStoryboard(name: "ProtocolsAndExtensions", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "ProtocolsAndExtensionsViewController") as! ProtocolsAndExtensionsViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 7:
            let storyboard = UIStoryboard(name: "ErrorHandling", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "ErrorHandlingViewController") as! ErrorHandlingViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        case 8:
            let storyboard = UIStoryboard(name: "Generics", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "GenericsViewController") as! GenericsViewController
            
            navigationController?.pushViewController(viewController, animated: true)
        default:
            fatalError("Fatal Error")
        }
    }
}
