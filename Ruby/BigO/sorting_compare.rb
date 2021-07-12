#!/usr/bin/env ruby
require 'io/console'
require 'benchmark'

class SortingDemo
  # Bubble Sort: O(n^2)
  def self.bubble_sort!(array)
    len = array.length - 1
    sorted = false

    until sorted
      sorted = true
      (0...len).each do |idx|
        if array[idx] > array[idx + 1]
          array[idx], array[idx + 1] = array[idx + 1], array[idx]
          sorted = false
        end
      end
    end

    array
  end