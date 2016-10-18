# Design and Build a Nested Data Structure
# A fashion show with multiple runways and multiple models
fashion_show = {
    runway_one: {
        design_house: 'Alexander Wang',
        seat_info: {
            total_seats: 100,
            seats_available: 10
        },
        models: [
            "Taylor Hill", 
            "Kendall Jenner"
        ]
    },
    runway_two: {
        design_house: 'Valentino',
        seat_info: {
            total_seats: 75,
            seats_available: 3
        },
        models: [
            "Gigi Hadid", 
            "Hailey Baldwin"
        ]
    },
    runway_three: {
        design_house: 'Alexander McQueen',
        seat_info: {
            total_seats: 50,
            seats_available: 0
        },
        models: ["Bella Hadid"]
    }
}

# Returns "Alexander Wang"
p fashion_show[:runway_one][:design_house]
# Returns ":total_seats=>75, :seats_available=>3"
p fashion_show[:runway_two][:seat_info]
# Returns "Bella Hadid"
p fashion_show[:runway_three][:models]
# Adds "Kendall Jenner" to list of models for Alexander McQueen
p fashion_show[:runway_three][:models].push "Kendall Jenner"
p fashion_show[:runway_three][:models]