
def sequencer
    frequencies = File.open("input.txt", "r").to_a.map{ |x| x.to_i }
    loop do 
        frequencies.each{ |x| yield x }
    end
end

def solve 
    seen_frequencies = Hash.new(0)
    current = 0

    sequencer do |x|
        current += x
        seen_frequencies[current] += 1
        return current if seen_frequencies[current] == 2
    end

end

puts solve