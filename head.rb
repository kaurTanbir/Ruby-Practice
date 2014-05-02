class HEADCOUNT

	def getLines(data)
		lines = data.split("\n");
		result =""

		if lines.length < 10
			for i in 0..lines.length-1
            result << ((lines[i]) << "\n");
        end
		else
	        for i in 0..9
	            result << ((lines[i])  << "\n");
	        end
	    end

       	result.to_s
	end


	def getSpecifiedLines(data,noOfLines)
		lines = data.split("\n");
		result = ""
		for i in 0..noOfLines-1
            result << ((lines[i]) << "\n");
        end
        result.to_s
    end

end

filename = ARGV.last
input = File.open(filename).read()
head = HEADCOUNT.new

if ARGV.length<2
	lines = head.getLines(input)
else
	noOfLines = ARGV[0][2].to_i
	lines = head.getSpecifiedLines(input,noOfLines)
end
puts lines

