//
//  TeamDetailsPage.swift
//  football_1
//
//  Created by Tanvir on 25/2/24.
//

import SwiftUI

//
//  teamdetails.swift
//  football_ios
//
//  Created by Tanvir on 11/1/24.
//

import SwiftUI

struct TeamDetailsPage: View {
    @State var teamid : Int;
    @State var season : Int;
    @State var name : String;
    @State var logo: String
    @State var leagueid: Int

    
    @State var selectTab: Int = 0
    @State var selectPage: String = "Fixture"
    var body: some View {
        VStack{
            DetailsTabbarViewPage(selectTab: $selectTab, selectPage: $selectPage, pagename: ["Fixture", "Recent", "Information", "Statistic", "Player"])
            if(selectPage == "Fixture") {
                teamfixture(teamid: teamid, season: season)
            }else if (selectPage == "Recent"){
                teamrecent(teamid: teamid, season: season)
            }else if (selectPage == "Information"){
                teaminformation(teamid: teamid)
            }else if(selectPage == "Player") {
                teamPlayerPage(teamid: teamid, season: season)
            }else if(selectPage == "Statistic"){
                teamStatiTicPage(teamid: teamid, season: season, leagueid: leagueid)
            }
            Spacer()
            GoogleBannerAdView()
        }.onChange(of: selectTab){i in
            
        }
    }
}

#Preview {
    TeamDetailsPage(teamid: 33, season: 2019, name: "ssdvsdsd", logo: "https://media.api-sports.io/football/leagues/39.png",leagueid: 39)
}

