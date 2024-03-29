# == Schema Information
#
# Table name: countries
#
#  name        :string       not null, primary key
#  continent   :string
#  area        :integer
#  population  :integer
#  gdp         :integer

require_relative './sqlzoo.rb'

def highest_gdp
  # Which countries have a GDP greater than every country in Europe? (Give the
  # name only. Some countries may have NULL gdp values)
  execute(<<-SQL) 
  select name 
  from countries
  where gdp > ( 
    select max(gdp) 
    from countries 
    where continent = 'Europe'
  )
  SQL
end

def largest_in_continent
  # Find the largest country (by area) in each continent. Show the continent,
  # name, and area.
  execute(<<-SQL) 
  select continent,name, area 
  from countries c1 
  where area = ( 
    select max(area) 
    from countries c2
    where c1.continent = c2.continent  
  )
  SQL
end

def large_neighbors
  # Some countries have populations more than three times that of any of their
  # neighbors (in the same continent). Give the countries and continents.
  execute(<<-SQL) 
  select c1.name, c1.continent 
  from countries c1 
  where c1.population > 3 * ( 
    select max(population) 
    from countries c2 
    where c1.continent = c2.continent and c1.name != c2.name
  )
  SQL
end
