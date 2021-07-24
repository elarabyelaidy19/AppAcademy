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
  select 
    countries.name 
  from 
    countries 
  where 
    countries.gdp > ( 
      select 
        max(c2.gdp) 
      from 
        countries c2 
      where 
        conitinent = 'euorpe'
    );
  SQL
end

def largest_in_continent
  # Find the largest country (by area) in each continent. Show the continent,
  # name, and area.
  execute(<<-SQL)
  select 
    countries.name,
    countries.continent,
    countries.area
  from 
    countries 
  where 
    countries.area > ( 
      select 
        max(c2.area) 
      from 
        countries c2 
      where
      countries.conitenent = c2.continent 
    );
  SQL
end

def large_neighbors
  # Some countries have populations more than three times that of any of their
  # neighbors (in the same continent). Give the countries and continents.
  execute(<<-SQL)
  select 
    c1.name, 
    c1.continent 
  from 
    countries c1 
  where 
    c1.population > ( 
      select 
        max(c2.population) 
      from 
        countries c2 
      where 
        c1.population = 3 * c2.population 
        and c1.continent = c2.continent 
    );
  SQL
end
