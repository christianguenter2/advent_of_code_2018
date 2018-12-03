
def build_char_pairs(first,second)
    result = []
    first.each_with_index do |x, index|
        result.append([x,second[index]])
    end
    return result
end

def solve
    candidates = File.open("input.txt", "r").to_a.permutation(2).to_a

    candidates.each do |candidate|
        char_pairs = build_char_pairs(candidate[0].split(//), candidate[1].split(//))
        if char_pairs.select{ |x| x[0] != x[1] }.size == 1
            return char_pairs.select{ |x| x[0] == x[1] }.map{|x| x[0]}.join
        end
    end
end

puts solve