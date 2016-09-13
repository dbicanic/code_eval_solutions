=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
#...
end
=end

File.open(ARGV[0]).each_line do |line|
   args = line.split
   x = args[0].to_i
   y = args[1].to_i
   n = args[2].to_i
   (1..n).each do |num|
   	   if num%x == 0 && num%y == 0 
   	   	print 'FB '
	   elsif num%x == 0
	   	print 'F ' 
	   elsif num%y == 0 
	    print 'B '
	   else 
		print num.to_s + " "
	   end
   end
   print "\n"
end