require 'questions'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

describe 'tech test' do
# 1
  it 'performs a bubble sort on an array of numbers' do
    n = bubble_sort([3,2,9,6,5,3,2,8,9,5,4])
    expect(n).to eq [2,2,3,3,4,5,5,6,8,9,9]
  end
# #2
 # - sorry I couldn't find an appropriate way to test

# 3
  it 'takes a string and returns the number of minutes between the 2 times' do
    n = get_time_difference("11:30am", "9:55pm")
    expect(n).to eq 625
  end

  it 'takes a string and returns the number of minutes between the 2 times' do
    n = get_time_difference("9:30am", "3:00pm")
    expect(n).to eq 330
  end

  it 'takes a string and returns the number of minutes between the 2 times' do
    n = get_time_difference("9:30am", "10:30pm")
    expect(n).to eq 780
  end

  it 'takes a string and returns the number of minutes between the 2 times' do
    n = get_time_difference("10:30am", "10:30pm")
    expect(n).to eq 720
  end

  it 'takes a string and returns the number of minutes between the 2 times' do
    n = get_time_difference("10:45am", "10:15pm")
    expect(n).to eq 690
  end
# 4
  it 'finds the 3rd largest string in an array of strings' do
    n = get_third_largest(["Within", "this", "I'm", "finding", "the", "third", "largest", "word"])
    expect(n).to eq "within"
  end
# 6
  it 'rounds a float up if the integer component is odd' do
    n = round_odd_even(3.5)
    expect(n).to eq 4
  end

  it 'rounds a float up if the integer component is odd' do
    n = round_odd_even(6.5)
    expect(n).to eq 6
  end
# 7
  it 'swaps the cases of a string' do
    n = swap_cases("JohnSmith")
    expect(n).to eq "jOHNsMITH"
  end
# 8
  it 'finds the position of given number' do
    n = find_nearest(7, [1,6,7,9,13])
    expect(n).to eq 2
  end

  it 'finds the position of the next largest number to the given number' do
    n = find_nearest(8, [1,6,7,9,13])
    expect(n).to eq 3
  end
# 9
  it 'removes duplicate entries in an array' do
    n = remove_duplicate([1, 6, 5, "mary", "sean", 6, "peter", "mary"])
    expect(n).to eq [1, 6, 5, "mary", "sean", "peter"]
  end
end