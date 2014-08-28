require 'prime'

# find_primes method will output a list of prime numbers between a range of numbers
# starting with first_number and ending with last_number.  The output will be to a
# file named "ListofPrimes"

def find_primes(first_number, last_number, fname)

	fileforprimes = File.open(fname, "w")

	for i in first_number..last_number
     
    	if Prime.prime?(i)

    		# uncomment next line to output primes to the console
    		# puts i

    		fileforprimes.puts i

		end

     end
     
    fileforprimes.close

end

find_primes(500000, 10000000, "ListOfPrimes.txt")