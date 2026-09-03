//
//  Extentions.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 31.08.2026.
//


import SwiftUI

extension Date{
    func convertData() -> String{
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}