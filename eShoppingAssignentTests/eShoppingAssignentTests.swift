//
//  eShoppingAssignentTests.swift
//  eShoppingAssignentTests
//
//  Created by Shriram Kadam on 11/12/22.
//

import XCTest
import Combine
@testable import eShoppingAssignent

final class eShoppingAssignentTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testModelComputedProperties() throws {
        /// Tests the computed properties of the data model

//        var product:Product = Product(citrusID: "display_1_F_Al-mgtjXrg-pn33UYREA0P0KCgoIRE1fMjMxMjQSABoMCP2us5YGEJrokdEDIgIIAQ==", title: "Diamond Label Shiraz", id: "23124", imageURL: "https://media.danmurphys.com.au/dmo/product/23124-1.png?impolicy=PROD_SM", price: [], brand: "Rosemount", badges: [], ratingCount: 4.7, messages: AnyObject, isAddToCartEnable: true, addToCartButtonText: AddToCartButtonText(rawValue: "")!, isInTrolley: true, isInWishlist: true, purchaseTypes: [], isFindMeEnable: true, saleUnitPrice: 9.4, totalReviewCount: 11, isDeliveryOnly: true, isDirectFromSupplier: false)
       
        
        XCTAttachment(string: "Diamond Label Shiraz")
        XCTAttachment(string: "https://i.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU")

    }
    
    
    func testNetworkManager() throws {
        //var productViewModel = ProductViewModel()
        let url = URL(string: "https://run.mocky.io/v3/2f06b453-8375-43cf-861a-06e95a951328")!
  
       // var result: [productViewModel.results] = []
        var cancellables = Set<AnyCancellable>()
        let expectation = self.expectation(description: "received")

       
        XCTAttachment(string: "NetworkManager published an empty array.")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
