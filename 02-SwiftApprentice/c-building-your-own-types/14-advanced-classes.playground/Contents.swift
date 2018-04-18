//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 14"

// Challenges
/**
 1. Create three simple classes called A, B, and C where C inherits from B and B inherits from A.
 In each class initializer, call print("I'm <X>!") both before and after super.init().
 Create an instance of C called c. What order do you see each print() called in?
 */
class A {
    init() {
        print("I'm <A>!")
    }
    
    deinit {
        print("Deinitialized A")
    }
}

class B: A {
    override init() {
        print("I'm <B>!")
        super.init()
        print("I'm <B>!")
    }
    
    deinit {
        print("Deinitialized B")
    }
}

class C: B {
    override init() {
        print("I'm <C>!")
        super.init()
        print("I'm <C>!")
    }
    
    deinit {
        print("Deinitialized C")
    }
}

let c = C()
/**
 It prints
 I'm <C>!
 I'm <B>!
 I'm <A>!
 I'm <B>!
 I'm <C>!
 */

/**
 2. Implement deinit for each class. Create your instance c inside of a do { } scope
 which will cause the reference count to go to zero when it exits the scope.
 Which order are the classes deinitialized in?
 */

do {
    let _ = C()
}
/**
 Deinitialized C
 Deinitialized B
 Deinitialized A
 */

/**
 3. Fix the following classes so there isn’t a memory leak when you add an order
 */
class Customer {
    let name: String
    var orders: [Order] = []
    
    init(name: String) {
        self.name = name
    }
    
    func add(_ order: Order) {
        order.customer = self
        orders.append(order)
    }
    
    deinit {
        print("Customer is being removed from memory!")
    }
}

class Order {
    let product: String
    weak var customer: Customer?
    
    init(product: String) {
        self.product = product
    }
    
    deinit {
        print("Order is being removed from memory!")
    }
}

var customer: Customer? = Customer(name: "Ariana")
var order: Order? = Order(product: "Book")
order?.customer = customer

if let order = order {
    customer?.add(order)
}

customer = nil // Customer is being removed from memory!
order = nil // Order is being removed from memory!
