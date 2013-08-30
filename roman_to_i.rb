class String
	def roman_to_i
	total = 0
	val = 0
	prev = 0
	letters = {
		"I" => 1,
		"V" => 5,
		"X" => 10,
		"L" => 50,
		"C" => 100,
		"D" => 500,
		"M" => 1000
	}
	roman=self.downcase
	exceptions = %w(iiii il ic id im iiv iix vx vl vc vd vm vv xxxx xc xxc xxl xd xm cccc ll lc ld lm cm dd dm ccm ccd mmmm)
	if exceptions.any? { |pair| roman.include? pair}
		puts "#{self} is not a valid Roman numeral"
			return
		end
		
	roman.reverse.each_char do |char|
		v = letters[char.upcase]
		if !v
			puts "#{self} is not a valid Roman numeral"
			return
		end
		
		if v < prev
			total -= v
		else
			prev = v
			total += v
		end	
	end
	total
end
end


puts 'MDM'.roman_to_i
