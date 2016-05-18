//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Felicia"

protocol ExerciseType {
    var name : String { get }
    var caloriesBurned : Double { get }
    var minutes : Double { get }
}

struct EllipticalTrainer : ExerciseType {
    let name = "Elliptical Machine"
    let caloriesBurned : Double
    let minutes: Double
}

struct Treadmill : ExerciseType {
    let name = "Treadmill"
    let caloriesBurned: Double
    let minutes: Double
    let distanceInMiles : Double
}