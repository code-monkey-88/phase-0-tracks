imperial_college_london = {
  location: 'London',
  ranking: {
    college_ranking: '8th',
    business_school_ranking: '45'
  },


  departments: ['science','medicine','technology','business']
}

p imperial_college_london [:departments][3]
p imperial_college_london [:ranking][:business_school_ranking]
p imperial_college_london [:departments][2] = 'engineering'

p imperial_college_london [:departments][2]
p imperial_college_london [:departments].reverse
p imperial_college_london [:departments] << 'entrepreneurship'
