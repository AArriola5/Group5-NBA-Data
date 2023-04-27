# Group5-NBA-Data
 Group project for CS 431

**Adrian Arriola**
```
Came up with idea to use a sports team for data
Input data for Lakers, and Teams from G2 through P6
```

**Adrian Delfin**
```
Found data for NBA players and teams
Completed the data tables for the team rosters with the player's information
```

**Joshua Chung**
```
Created document page and organized columns
Added additional tables/columns for general managers and NBA divisions
Created eerd
```

### Topic
For our topic, we would like to analyze data for NBA teams which inlcude team stats, information about the players in the rosters as well as the staff members.


# EERD
![hw3eerd](https://user-images.githubusercontent.com/90055401/228392004-dbb54dbd-6db5-4b45-bb45-d8b08d103a96.PNG)

### Keys

Conference, Division, and Team primary keys will be name.

Employees might have non unique names, so primary key can be (name, team).

Arena primary key should be a unique arena name.

Only attributes that can be null or school attributes for Employees.

### Relationships

Conferences should have 3 divisions. Each division will match only 1 conference.

Divisions will have 5 teams, and each team is matched to only 1 division.

Teams can have an uncapped amount of employees, and each employee will be on 1 team.

Teams will have 1 arena, but arenas can have multiple teams.




# Queries (in English)
1. "Get the name of each Pacific team and the count of players in each team."

Answer:

| Pacific Team | Player Count |
| --- | --- |
| Sacramento Kings | 17 |
| Phoenix Suns | 16 |
| Los Angeles Clippers | 17 |
| Golden State Warriors | 17 |
| Los Angeles Lakers | 16 |

2. "Get the Player Name, Player Number, and Position of players on the Los Angeles Lakers who are currently a rookie (Years of Experience == 0)."

Answer:

| Player Name | Player Number | Position |
| --- | --- | --- |
| Max Christie | 10 | Guard |
| Scotty Pippin Jr. | 14 | Guard |
| Cole Swider | 20 | Forward |

3. "Get the Player Name, Age, and Team of players who were born during and after the year 2000"

Answer:

| Player Name | Age | Team |
| --- | --- | --- |
| Keegan Murray | 22 | Sacramento Kings |
| Kessler Edwards | 22 | Sacramento Kings |
| Keon Ellis | 23 | Sacramento Kings |
| Darius Bazley | 22 | Phoenix Suns |
| Brandon Boston Jr. | 21 | Los Angeles Clippers |
| Bones Hyland | 22 | Los Angeles Clippers |
| Moussa Diabate | 21 | Los Angeles Clippers |
| Jonathan Kuminga | 20 | Golden State Warriors |
| Ryan Rollins | 20 | Golden State Warriors |
| Moses Moody | 20 | Golden State Warriors |
| Patrick Baldwin Jr. | 20 | Golden State Warriors |
| Lester Quinones | 22 | Golden State Warriors |
| Max Christie | 20 | Los Angeles Lakers |
| Scotty Pippen Jr. | 22 | Los Angeles Lakers |

4. "Get the Player Name, Position, Height, Weight, and Team of players who are 7'0" and higher."

Answer:

| Player Name | Position | Height | Weight | Team |
| --- | --- | --- | --- | --- |
| Domantas Sabonis | Forward-Center | 7-1 | 240 lbs | Sacramento Kings |
| Alex Len | Center | 7-2 | 250 lbs | Sacramento Kings |
| Neemias Queta | Center | 7-0 | 248 lbs | Sacramento Kings |
| Deandre Ayton | Center | 7-0 | 250 lbs | Phoenix Suns |
| Ivica Zubac | Center | 7-0 | 240 lbs | Los Angeles Clippers |
| Mason Plumlee | Forward-Center | 7-0 | 254 lbs | Los Angeles Clippers |
| Mo Bamba | Guard | 7-0 | 231 lbs | Los Angeles Lakers |

5. "Get the names teams, age and age as a rookie, of the players who were 25 or older in their rookie years."

Answer:

| Player Name | Team | Age | Years of Experience | Age as a Rookie |
| --- | --- | --- | --- | --- |
| Torrey Craig | Phoenix Suns | 32 | 5 | 27 |
| Damion Lee | Phoenix Suns | 30 | 5 | 25 |
| Jock Landale | Phoenix Suns | 27 | 1 | 26 |
| Ish Wainwright | Phoenix Suns | 28 | 1 | 27 |
| Xavier Moon | Los Angeles Clippers | 28 | 1 | 27 |

6. "Get the names, team, and colleges of players that went to the same college as Warrior's GM Bob Myers."

Answer:

| Player Name | Team | College |
| --- | --- | --- |
| Russell Westbrook | Los Angeles Clippers | UCLA |
| Norman Powell | Los Angeles Clippers | UCLA |
| Kevon Looney | Golden State Warriors | UCLA |

7. "Get the player's name, team, postion, height, and weight of all centers that are 6'10" or shorter."

Answer:

| Player Name | Team | Postion | Height | Weight |
| --- | --- | --- | --- | --- |
| Chimezie Metu | Sacramento Kings | Forward-Center | 6-9 | 225 |
| Bismack Biyombo | Phoenix Suns | Center | 6-8 | 255 |
| JaMychal Greem | Golden State Warriors | Forward-Center | 6-9 | 227 |
| Anthony Davis | Los Angeles Lakers | Forward-Center | 6-10 | 253 |
| Devon Reed | Los Angeles Lakers | Center | 6-5 | 206 |

8. "Get the player's name, team, postion, height, and weight of all players that are over 6'3" tall and under 195 pounds."

Answer:

| Player Name | Team | Postion | Height | Weight |
| --- | --- | --- | --- | --- |
| Kevin Huerter | Sacramento Kings | Guard-Forward | 6-7 | 198 |
| Landry Shamet | Phoenix Suns | Guard | 6-4 | 190 |
| Brandon Boston | Los Angeles Clippers | Guard | 6-6 | 188 |
| Jordan Poole | Golden State Warriors | Guard | 6-4 | 194 |
| Andrew Wiggins | Golden State Warriors | Forward | 6-7 | 197 |
| Stephen Curry | Golden State Warriors | Guard | 6-2 | 185 |
| D'Angelo Russell | Los Angeles Lakers | Guard | 6-4 | 193 |
| Malik Beasley | Los Angeles Lakers | Guard | 6-4 | 187 |
| Max Christie | Los Angeles Lakers | Guard | 6-5 | 190 |
| Austin Reaves | Los Angeles Lakers | Guard | 6-5 | 197 |

9. "Give the player name, team and Date of birth of players born the same year as the Phoenix Suns' stadium opened."

Answer:

| Player Name | Team | Date of Birth |
| --- | --- | --- |
| Harrison Barnes | Sacramento Kings | May 30, 1992 |
| Damion Lee | Phoenix Suns | Oct 21, 1992 |
| Bismack Biyombo | Phoenix Suns | Aug 28, 1992 |
| Gary Payton II | Golden State Warriors | Dec 01, 1992 |

10. "Get the average age, and experience of each team in the pacific division."

Answer:
| Team | Average Age | Average Experience |
| --- | --- | --- | 
| Sacramento Kings | 25.76 | 5.07 |
| Phoenix Suns | 28.25 | 6.38 |
| Los Angeles Clippers | 28.47 | 7.67 | 
| Golden State Warriors | 26.94  | 6.64 | 
| Los Angeles Lakers | 25.63 | 5.92 | 

**References:**

https://www.nba.com/teams (Team and Player Stats)

https://sports.yahoo.com/nba/teams/ (Team and Player Stats)

https://en.wikipedia.org/wiki/List_of_National_Basketball_Association_general_managers (Team GMs)
