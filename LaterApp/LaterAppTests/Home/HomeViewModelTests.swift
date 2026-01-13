//
//  HomeViewModelTests.swift
//  LaterAppTests
//
//  Created by Lucas Arthur Chagas Feitosa on 13/01/26.
//

import XCTest
@testable import LaterApp

@MainActor
final class HomeViewModelTests: XCTestCase {

    func makeSUT(items: [LaterItem] = []) -> HomeViewModel {
        let store = MockLaterItemStore()
        store.items = items
        return HomeViewModel(store: store)
    }

    func test_load_whenEmpty_setsEmptyState() async {
        let sut = makeSUT()

        await sut.load()

        XCTAssertEqual(sut.state, .empty)
        XCTAssertTrue(sut.sections.isEmpty)
    }

    func test_load_whenHasItems_setsContentState() async {
        let sut = makeSUT(items: [
            LaterItem(title: "Interstellar", type: .movie)
        ])

        await sut.load()

        XCTAssertEqual(sut.state, .content)
        XCTAssertEqual(sut.sections.count, 1)
    }

    func test_load_groupsItemsByType() async {
        let sut = makeSUT(items: [
            LaterItem(title: "Filme 1", type: .movie),
            LaterItem(title: "Filme 2", type: .movie),
            LaterItem(title: "Livro", type: .book)
        ])

        await sut.load()

        let movieSection = sut.sections.first { $0.type == .movie }
        XCTAssertEqual(movieSection?.items.count, 2)
    }
}

