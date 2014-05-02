class HEADCOUNT

	def getLines(data)
		lines = data.split("\n", 11);
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


end

	filename = ARGV.last
	input = File.open(filename).read()
	head = HEADCOUNT.new
	lines = head.getLines(input)
	puts lines

