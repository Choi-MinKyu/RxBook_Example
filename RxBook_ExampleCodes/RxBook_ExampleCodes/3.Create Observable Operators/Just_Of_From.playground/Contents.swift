import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

func just() {
    Observable.just(1)
        .subscribe {
            print("just \($0)")
        }.disposed(by: disposeBag)
}

func of() {
    Observable.of(1,2,3)
        .subscribe {
            print("of \($0)")
        }.disposed(by: disposeBag)
}

func from() {
    Observable.from([1,2,3,4,5])
        .subscribe {
            print("from \($0)")
        }.disposed(by: disposeBag)
}

just()

of()

from()
