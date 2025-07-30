//
//  Functions.swift
//  MyLocations
//
//  Created by khamzaev on 30.07.2025.
//

import Foundation


func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(
        deadline: .now() + seconds,
        execute: run
    )
}
