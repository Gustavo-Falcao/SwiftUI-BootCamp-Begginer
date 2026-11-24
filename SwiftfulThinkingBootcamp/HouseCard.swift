//
//  HouseCard.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 16/09/26.
//

import SwiftUI

struct HouseCard: View {
    
    private let titleHouse: String = "Lakeshore Blvd West"
    private let houseLocation: String = "2464 Royal Ln. Mesa, New Jersey"
    private let bedroomCount: Int = 4
    private let bathroomCount: Int = 4
    private let sqft: Int = 3210
    private let reviewScore: String = "4.8"
    private let reviewCount = 20
    
    var body: some View {
        VStack (spacing: 15){
            cardHouse1
            cardHouse2
        }
        .padding(.top)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.backgroundApp)
    }
    
    private var cardHouse1: some View {
        Image(.house4)
            .resizable()
            .scaledToFill()
            .frame(width: 280, height: 350)
            .overlay {
                overlayContent
            }
            .clipShape(.rect(cornerRadius: 16))
            .padding(14)
            .background{
                RoundedRectangle(cornerRadius: 24)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 4)
            }
    }
    
    private var overlayContent: some View {
        VStack {
            cardHeader1
            Spacer()
            paginationDots
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    titleRow(textColor: .white)
                    locationRow(textColor: .white.opacity(0.8))
                    propertyDetails(textColor: .white)
                    reserveButton(foregrounColor: .black, backgroundColor: .white)
                }
                .padding(10)
                .background(.thinMaterial ,in: Rectangle())
            }
            
        }
    }
    
    private var cardHeader1: some View {
        HStack {
            Text("$250 Night")
                .font(.footnote)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .padding(10)
                .background(.thinMaterial, in: Capsule())
            
            Spacer()
            
            Image(systemName: "heart")
                .foregroundStyle(.white)
                .padding(10)
                .background(.thinMaterial, in: Circle())
        }
        .padding(.top, 10)
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity)
    }
    
    private var cardHouse2: some View {
        VStack(spacing: 10) {
            Image(.house4)
                .resizable()
                .scaledToFill()
                .frame(width: 280, height: 250)
                .clipped()
                .clipShape(.rect(cornerRadius: 16))
                .overlay {
                    VStack {
                        HStack {
                            Image(systemName: "heart")
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(.thinMaterial, in: Circle())
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        Spacer()
                        
                        HStack {
                            paginationDots
                        }
                    }
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    
                }
            
            VStack(alignment: .leading, spacing: 10) {
                titleRow(textColor: .black)
                locationRow(textColor: .black.opacity(0.6))
                propertyDetails(textColor: .black)
                HStack {
                    Text("$250 Night")
                        .font(.subheadline)
                        .fontWeight(.heavy)
                        .foregroundStyle(.black)
                        
                    Spacer(minLength: 10)
                    reserveButton(foregrounColor: .white, backgroundColor: .black)
                }
            }
            .frame(maxWidth: 280, alignment: .leading)
            
        }
        .padding(14)
        .background{
            RoundedRectangle(cornerRadius: 24)
                .fill(.white)
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 4)
        }
    }
    
    private var paginationDots: some View {
        HStack(spacing: 6) {
            Capsule()
                .fill(.white)
                .frame(width: 10, height: 5)
                
            ForEach(0..<4) { index in
                Circle()
                    .frame(width: 5, height: 5)
            }
        }
        .padding(5)
        .background(.thinMaterial, in: Capsule())
    }
    
    private func titleRow(textColor: Color) -> some View {
        HStack {
            Text(titleHouse)
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Spacer()
            
            HStack(spacing: 3) {
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.orange)
                Text(reviewScore)
                Text("(\(reviewCount))")
            }
            .font(.footnote)
        }
        .foregroundStyle(textColor)
    }
    
    private func locationRow(textColor: Color) -> some View {
        HStack {
            Image(systemName: "mappin.and.ellipse")
            Text("2464 Royal Ln. Mesa, New Jersey")
        }
        .font(.caption)
        .foregroundStyle(textColor)
    }

    private func propertyDetails(textColor: Color) -> some View {
        HStack {
            detailsElement(iconName: "bed.double", text: "\(bedroomCount) Bedrooms")
            detailsElement(iconName: "bathtub", text: "\(bathroomCount) Bathrooms")
            detailsElement(iconName: "square.split.2x2", text: "\(sqft) Sqft")
        }
        .foregroundStyle(textColor)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.bottom, 5)
    }
    
    private func detailsElement(iconName: String, text: String) -> some View {
        HStack(spacing: 3) {
            Image(systemName: iconName)
                .font(.caption)
            Text(text)
                .font(.caption2)
        }
    }
    
    private func reserveButton(foregrounColor: Color, backgroundColor: Color) -> some View {
        HStack {
            Image(systemName: "calendar.badge.plus")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text("Reserve")
                .font(.footnote)
                .fontWeight(.bold)
        }
        .foregroundStyle(foregrounColor)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(backgroundColor, in: Capsule())
    }
    
}

#Preview {
    HouseCard()
}
