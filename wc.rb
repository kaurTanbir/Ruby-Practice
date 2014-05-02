filename = ARGV.last
lines = File.readlines(filename)


class WC
	# line count
	def lineCount(lines)
		puts "lines : #{lines.length}" 
	end


	# char count
	def charCount(lines)
		chars = 0
		lines.each do|line|
			chars = chars + line.length
		end
		puts "characters : #{chars}"
	end


	# word count
	def wordCount(lines)
		words = 0
		lines.each do|line|
			words = words + line.split(" ").length
		end
		puts "words : #{words} "
	end
end	

wc = WC.new

wc.lineCount(lines)
wc.wordCount(lines)
wc.charCount(lines)




