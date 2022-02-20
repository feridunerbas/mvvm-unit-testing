//
//  HomeViewControllerTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Resolver
import XCTest
@testable import MVVMUnitTesting

class HomeViewControllerTests: XCTestCase {
    
    var spy: FakeHomeViewModel!
    var sut: HomeViewController!
    
    override func setUp() {
        super.setUp()
        spy = FakeHomeViewModel()
        Resolver.fakes.register {
            self.spy
        }.implements(HomeViewModelProtocol.self)
        sut = Resolver.fakes.optional()
    }
    
    override func tearDown() {
        super.tearDown()
        spy = nil
        sut = nil
    }
}

extension HomeViewControllerTests {
    
    func testWorksWithEmptySectionsData() {
        // Given Empty section data and view is loaded
        spy.sections = []
        sut.loadView()
        // When viewmodel signals reloadNews
        spy.reloadNews?()
        // Then View should display 0 rows
        XCTAssertEqual(sut.numberOfSections(in: sut.tableView), 0)
        
    }
    
    func testLoadsViewModelsSectionsWithData() {
        // Given some section data and view is loaded
        spy.sections = HomeTableSection.randomCollection
        sut.loadView()
        // When viewmodel signals reloadNews
        spy.reloadNews?()
        // Then View should display
        XCTAssertEqual(sut.numberOfSections(in: sut.tableView), spy.sections.count)
        
    }
    
}
