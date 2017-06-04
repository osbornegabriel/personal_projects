=begin
  This was the challenge presented on code wars:
    Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.

    The binary number returned should be a string.

  Below was my original solution, after that is my much drier solution, using the .to_i and .to_s(2) methods.
=end

#Draft 1:

# def add_binary(a,b)
#   binary_number = '0'

#   (a + b).times do
#     if !binary_number.include?('0')
#       binary_number.gsub!('1', '0')
#       binary_number.prepend('1')
#     else
#       change_index = binary_number.rindex('0')
#       binary_number[change_index] = '1'
#       change_index += 1
#       until change_index == binary_number.length
#         binary_number[change_index] = '0'
#         change_index += 1
#       end
#     end
#   end

#   binary_number
# end

#Final Version:
def add_binary(a,b)
  sum = (a+b).to_i
  sum.to_s(2)
end