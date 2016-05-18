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

let ellipticalWorkout = EllipticalTrainer(caloriesBurned: 335, minutes: 30)

struct Treadmill : ExerciseType {
    let name = "Treadmill"
    let caloriesBurned: Double
    let minutes: Double
    let distanceInMiles : Double
}

let runningWorkout = Treadmill(caloriesBurned: 350, minutes: 25, distanceInMiles: 4.2)

extension ExerciseType {
    var caloriesBurnedPerMinute : Double {
        return caloriesBurned / minutes
    }
}

print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)

extension SequenceType where Generator.Element == ExerciseType {
    func totalCaloriesBurned() -> Double {
        var total : Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}