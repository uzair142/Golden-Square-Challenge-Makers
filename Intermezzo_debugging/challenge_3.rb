def get_most_common_letter(text)
    counter = Hash.new(0)
    puts counter
    text.chars.each do |char|
      if char =~ /[A-Za-z]/
        counter[char] += 1
        puts counter
      end
     end
   print counter.to_a.sort_by { |k, v| v }[-1][0]
end 



# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"