//
//  HomeViewController.swift
//  NibmTaxi
//
//  Created by thusitha on 8/8/20.
//  Copyright © 2020 nibm. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class HomeViewController: UIViewController {
    // MARK: - Properties
    
    private let mapView = MKMapView()
    
    // MARK: - Lifecycale

    override func viewDidLoad() {
        super.viewDidLoad()
        checkIsUserLoggedIn()
//        signOut()
        view.backgroundColor = .white
    }
    
    //MARK: API
    
    func checkIsUserLoggedIn() {
        if(Auth.auth().currentUser?.uid == nil) {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginViewController())
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        } else {
            configureUI()
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("DEBUG: sign out error")
        }
    }
    
    // MARK: - Helper Function
    
    func configureUI() {
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
}