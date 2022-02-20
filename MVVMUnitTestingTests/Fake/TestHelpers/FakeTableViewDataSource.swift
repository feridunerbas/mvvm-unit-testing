//
//  FakeTableViewDataSource.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

@testable import MVVMUnitTesting
import UIKit

class FakeTableViewDataSource<T: UITableViewCell>: UITableView, UITableViewDataSource {

    convenience init() {
        self.init(frame: .zero, style: .plain)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setup()
    }

    func dequeue() -> T {
        dequeueReusableCell(withIdentifier: String(describing: T.self), for: IndexPath.init(row: 0, section: 0)) as! T
    }

    func setup() {
        let id = String(describing: T.self)
        let nib = UINib(nibName: id, bundle: nil)
        register(nib, forCellReuseIdentifier: id)
        dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath)
    }

    static func dequeue<C: UITableViewCell>() -> C {
        let fake = FakeTableViewDataSource<C>()
        return fake.dequeue()
    }
}
