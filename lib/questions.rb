require 'questions'
require 'json'
# 1
def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end
  end
  list
end

# 2
def make_json(string)
  hash = {}
  num_of_words = string.split.size
  hash.merge!(num_of_words: num_of_words)
  longest_word = string.split(" ").max_by(&:length)
  hash.merge!(longest_word: longest_word)
  hash.to_json
end

# 3
def get_time_difference(first, second)
  @first_hour = get_first_hour(first)
  first_minutes = get_first_minutes(first)
  @second_hour = get_second_hour(second)
  second_minutes = get_second_minutes(second)
  calulate_time_difference
end

def calculate_hours_difference_to_min
  @diffinminutes = (@second_hour - @first_hour) * 60
end

def calculate_minute_difference
  @first_minutes + @second_minutes
end

  def get_first_hour(first)
    time = first.delete("am")
    first_hour = time.to_i + 1
  end

  def get_first_minutes(first)
    time = first.delete("am")
    if time.length == 5
      @first_minutes = 60 - time[3, 4].to_i
    else
      @first_minutes = 60 - time[2, 3].to_i
    end
  end

  def get_second_hour(second)
    time = second.delete("pm")
    second_hour = time.to_i + 12
  end

  def get_second_minutes(second)
    time = second.delete("pm")
    if time.length == 5
      @second_minutes = time[3, 4].to_i
    else
      @second_minutes = time[2, 3].to_i
    end
  end

  def calulate_time_difference
    calculate_hours_difference_to_min + calculate_minute_difference
  end

#4
def get_third_largest(array)
  sorted = array.sort_by!{ |string| string.length}
  sorted[-3].downcase
end

#5 - Many as many things you can improve about this code
# def height_in_cm(feet, inches)
# feet_as_inches = feet * 12
# total_inches = inches + feet_as_inches
# cm = total_inches * 2.54
# return cm
# end

#1 - You extract the logic of calculations into different private methods and then call those methods rather than going all of the logic in this one method.

#2 - You could remove the explicit return from the method to make the code cleaner as it isn't "needed" if other programmers using the code are fimiliar with Ruby convention. However if unfamiliar it may be clearer to leave it in.

#3 - total inches could be done in one calculation, (feet * 12) + inches

#4 - Could all be done in one calculate so would remove lines of code ((feet * 12) + inches) * 2.54 which could be put in a calculator method.

#6
def round_odd_even(integer)
  if integer.floor % 2 == 0
    integer.floor
  else
    integer.ceil
  end
end

#7
def swap_cases(string)
  string.swapcase
end

#8
def find_nearest(integer, array)
  if array.include?(integer)
    array.index(integer)
  else
    x = array.min_by { |x| (x - integer).abs }
    array.index(x) + 1
  end
end

#9
def remove_duplicate(array)
  cleaned = []
  array.each do |element|
    cleaned << element  if not cleaned.include?(element)
  end
  cleaned
end


