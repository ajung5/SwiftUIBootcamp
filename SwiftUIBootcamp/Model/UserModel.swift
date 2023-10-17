//
//  UserModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import Foundation

struct PersonModel: Identifiable {
    let id: UUID = .init()
    let firstName: String
    let middleName: String
    let lastName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

var users: [PersonModel] = [
    PersonModel(firstName: "Alice", middleName: "Bob", lastName: "Carol", userName: "alice123", followerCount: 500, isVerified: true),
    PersonModel(firstName: "Dave", middleName: "Eve", lastName: "Frank", userName: "dave456", followerCount: 200, isVerified: false),
    PersonModel(firstName: "Grace", middleName: "Hope", lastName: "Isaac", userName: "grace789", followerCount: 700, isVerified: true),
    PersonModel(firstName: "James", middleName: "Kim", lastName: "Lee", userName: "james012", followerCount: 300, isVerified: false),
    PersonModel(firstName: "Mary", middleName: "Noah", lastName: "Olivia", userName: "mary345", followerCount: 800, isVerified: true),

    PersonModel(firstName: "Peter", middleName: "Paul", lastName: "Mary", userName: "peter123", followerCount: 400, isVerified: true),
    PersonModel(firstName: "John", middleName: "Doe", lastName: "Jane", userName: "john456", followerCount: 100, isVerified: false),
    PersonModel(firstName: "Sarah", middleName: "Jones", lastName: "Williams", userName: "sarah789", followerCount: 600, isVerified: true),
    PersonModel(firstName: "Michael", middleName: "Johnson", lastName: "Brown", userName: "michael012", followerCount: 250, isVerified: false),
    PersonModel(firstName: "David", middleName: "Miller", lastName: "Taylor", userName: "david345", followerCount: 900, isVerified: true),

    PersonModel(firstName: "William", middleName: "Jones", lastName: "Brown", userName: "william123", followerCount: 550, isVerified: true),
    PersonModel(firstName: "Robert", middleName: "Williams", lastName: "Davis", userName: "robert456", followerCount: 350, isVerified: false),
    PersonModel(firstName: "Susan", middleName: "Smith", lastName: "Johnson", userName: "susan789", followerCount: 850, isVerified: true),
    PersonModel(firstName: "Thomas", middleName: "Johnson", lastName: "Williams", userName: "thomas012", followerCount: 450, isVerified: false),
    PersonModel(firstName: "Charles", middleName: "Brown", lastName: "Davis", userName: "charles345", followerCount: 950, isVerified: true),

    PersonModel(firstName: "Christopher", middleName: "Jones", lastName: "Miller", userName: "christopher123", followerCount: 600, isVerified: true),
    PersonModel(firstName: "Daniel", middleName: "Williams", lastName: "Taylor", userName: "daniel456", followerCount: 400, isVerified: false),
    PersonModel(firstName: "Matthew", middleName: "Davis", lastName: "Johnson", userName: "matthew789", followerCount: 700, isVerified: true),
    PersonModel(firstName: "Anthony", middleName: "Brown", lastName: "Williams", userName: "anthony012", followerCount: 500, isVerified: false),
    PersonModel(firstName: "Joseph", middleName: "Johnson", lastName: "Davis", userName: "joseph345", followerCount: 800, isVerified: true)
]
