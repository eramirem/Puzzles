#!/usr/bin/env ruby

line_num = 0
File.open("chaseofool.txt", "r") do |infile|
  while (line = infile.gets)
    line_num += 1
    if line.chomp == "0 0 0 0" then
      break
    end
  test = line.chomp.split(/ /)
  
  s1 = Integer(test[0])
  c1 = Integer(test[1])
  p1 = Integer(test[2])
  l1 = Integer(test[3])
  
  if ((s1.odd? && p1.even?) || (s1.even? && p1.odd?) || (c1.odd? && l1.even?) || 
    (c1.even? && l1.odd?)) then
    puts "Case #{line_num}: Never"
  next
  end    

s = Array.new(s1) {|i| s1-1-i}
c = Array.new(c1) {|i| c1-1-i}

result = false
laps = 0
i = 0
j = 0

while (result == false) do
  if (s[i]==p1 && c[j]==l1) then
    i += 1
    puts "Case #{line_num}: #{laps} #{i}/#{s1}"
    result = true
  end
  i += 1
  j += 1
  if (i == s.length) then
    laps += 1
    i = 0
  end
  if (j == c.length) then
    j =0
  end
end  
  
end
end
  



  
           



