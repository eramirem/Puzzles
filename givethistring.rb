#!/usr/bin/env ruby

letters = "iirytroyppytpeppowuiyoiuypipiyuyotyoiwiytorouqyiepyirueuiprpptwyiroqwtuyipourrrourorwipowiorutpwtwruuioquteorioriyutwqyyprptuqqquuituyywyuoewtrppqwrtiiruirpwyptpuoyyoeyerpqiotuieripurouwuwyuwrworowitoepoypeipeypiireeorrwripuuteoitpuutturruwiyryeetyrioweytueqrrrtotrpiqetoyepoipiwrwpppiritupwipruooiepoweypiuwrqywuuwyiroqpqpruioopuiuerputpwwuuiqwpiroewrtwiqerteoyeqtutwoeoipioiuqiiiouuoqtuuwtuwiiqwppqitywuqpuutrqiyoeuuutwrwtoqrqyoeyoiporuuioiwryoeruypreprqroiyuqwtuyoytoerwqryeeripryieypiwqirtriurueypiuyuypriuiwptywppupoioyrewooytreteeriiwroietuwypieeeeeqpiiiwrirtppoeyiwpooyyporpruwuoriiyowuytiwpwpryeywotoyirqypyypoeptiuwwoyprquoetepptorwiewprpiywwtuieeiweytrrwiqtwotioryoiptyyyuriiqiyroeeiqepwteuwptpruuypipieuoiiuuweeuryuuowporrooyywyyrryriqyirooitirueruptotpryoqtipippyptiurwyiryooywtryyuurtrutwqiqiiiqwouyeooueoturuowiuwrtruwwiupwopwweoo".split(//);

numbers = String.new
keys = { "q" => "0",
           "w" => "1",
           "e" => "2",
           "r" => "3",
           "t" => "4",
           "y" => "5",
           "u" => "6",
           "i" => "7",
           "o" => "8",
           "p" => "9"
         }

letters.each do |i| 
   numbers << keys[i]
end

result = Array.new
pairs = numbers.scan(/../)
b = Hash.new(0)


pairs.each do |i|
   b[i] += 1
end

b.each do |k, v|
puts "#{k} appears #{v} times"
end

puts "############"

b.delete_if {|key,value| value>1 }
puts b
