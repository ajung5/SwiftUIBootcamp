//
//  UserModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import Foundation

struct PersonModel: Identifiable, Hashable {
    let id: UUID = .init()
    let firstName: String
    let middleName: String
    let lastName: String
    let userName: String
    let followerCount: Int
    let city: String
    let isVerified: Bool
    let email: String
    let password: String
    let imageName: String
}

extension PersonModel {
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

var users: [PersonModel] = [
//    PersonModel(firstName: "Alice", middleName: "Bob", lastName: "Carol", userName: "alice123", followerCount: 500, isVerified: true),
//    PersonModel(firstName: "Dave", middleName: "Eve", lastName: "Frank", userName: "dave456", followerCount: 200, isVerified: false),
//    PersonModel(firstName: "Grace", middleName: "Hope", lastName: "Isaac", userName: "grace789", followerCount: 700, isVerified: true),
//    PersonModel(firstName: "James", middleName: "Kim", lastName: "Lee", userName: "james012", followerCount: 300, isVerified: false),
//    PersonModel(firstName: "Mary", middleName: "Noah", lastName: "Olivia", userName: "mary345", followerCount: 800, isVerified: true),
//
//    PersonModel(firstName: "Peter", middleName: "Paul", lastName: "Mary", userName: "peter123", followerCount: 400, isVerified: true),
//    PersonModel(firstName: "John", middleName: "Doe", lastName: "Jane", userName: "john456", followerCount: 100, isVerified: false),
//    PersonModel(firstName: "Sarah", middleName: "Jones", lastName: "Williams", userName: "sarah789", followerCount: 600, isVerified: true),
//    PersonModel(firstName: "Michael", middleName: "Johnson", lastName: "Brown", userName: "michael012", followerCount: 250, isVerified: false),
//    PersonModel(firstName: "David", middleName: "Miller", lastName: "Taylor", userName: "david345", followerCount: 900, isVerified: true),
//
//    PersonModel(firstName: "William", middleName: "Jones", lastName: "Brown", userName: "william123", followerCount: 550, isVerified: true),
//    PersonModel(firstName: "Robert", middleName: "Williams", lastName: "Davis", userName: "robert456", followerCount: 350, isVerified: false),
//    PersonModel(firstName: "Susan", middleName: "Smith", lastName: "Johnson", userName: "susan789", followerCount: 850, isVerified: true),
//    PersonModel(firstName: "Thomas", middleName: "Johnson", lastName: "Williams", userName: "thomas012", followerCount: 450, isVerified: false),
//    PersonModel(firstName: "Charles", middleName: "Brown", lastName: "Davis", userName: "charles345", followerCount: 950, isVerified: true),
//
//    PersonModel(firstName: "Christopher", middleName: "Jones", lastName: "Miller", userName: "christopher123", followerCount: 600, isVerified: true),
//    PersonModel(firstName: "Daniel", middleName: "Williams", lastName: "Taylor", userName: "daniel456", followerCount: 400, isVerified: false),
//    PersonModel(firstName: "Matthew", middleName: "Davis", lastName: "Johnson", userName: "matthew789", followerCount: 700, isVerified: true),
//    PersonModel(firstName: "Anthony", middleName: "Brown", lastName: "Williams", userName: "anthony012", followerCount: 500, isVerified: false),
//    PersonModel(firstName: "Joseph", middleName: "Johnson", lastName: "Davis", userName: "joseph345", followerCount: 800, isVerified: true)
    
    PersonModel(firstName: "John", middleName: "Doe", lastName: "Smith", userName: "john_doe", followerCount: 1000, city: "New York", isVerified: true, email: "john@example.com", password: "password123", imageName: "john.jpg"),
    PersonModel(firstName: "Jane", middleName: "Doe", lastName: "Johnson", userName: "jane_j", followerCount: 750, city: "Los Angeles", isVerified: false, email: "jane@example.com", password: "securepass", imageName: "jane.jpg"),
    PersonModel(firstName: "Ella", middleName: "Grace", lastName: "Roberts", userName: "ella_g", followerCount: 1200, city: "San Francisco", isVerified: true, email: "ella@example.com", password: "securepassword", imageName: "ella.jpg"),
    PersonModel(firstName: "Oliver", middleName: "Samuel", lastName: "Lee", userName: "oliver_lee", followerCount: 900, city: "Miami", isVerified: false, email: "oliver@example.com", password: "oliverpass", imageName: "oliver.jpg"),
    PersonModel(firstName: "Sophia", middleName: "Isabella", lastName: "Wright", userName: "sophia_w", followerCount: 3000, city: "Seattle", isVerified: true, email: "sophia@example.com", password: "password789", imageName: "sophia.jpg"),
    PersonModel(firstName: "Mason", middleName: "Liam", lastName: "Garcia", userName: "mason_g", followerCount: 700, city: "Dallas", isVerified: false, email: "mason@example.com", password: "mason123", imageName: "mason.jpg")
    
]
