
def generator
    ids = File.open("input.txt", "r").to_a

    ids.map do |x|
        count = Hash.new(0)
        x.split(//).each do |y|
            count[y] += 1
        end
        yield 2 if count.select{ |k,v| v==2 }.size >= 1
        yield 3 if count.select{ |k,v| v==3 }.size >= 1
    end

end

def solve

    two = 0
    three = 0

    generator do |x|
        two += 1 if x == 2
        three += 1 if x == 3
    end 

    return two * three

end

puts solve
