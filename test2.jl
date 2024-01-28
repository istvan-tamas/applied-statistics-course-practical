function dice_probability(n::Int)
    probabilities = zeros(6*n)
    for i=1:6
        probabilities[i] = 1/6
    end

    for dice=2:n
        new_probabilities = zeros(6*dice)
        for sum=dice:6*dice
            for roll=1:min(sum, 6)
                if sum-roll >= 1
                    new_probabilities[sum] += probabilities[sum-roll] * 1/6
                end
            end
        end
        probabilities = new_probabilities
    end

    return probabilities
end

n = 3  # number of dice
probabilities = dice_probability(n)
for sum=n:6*n
    println("Sum: ", sum, ", Probability: ", probabilities[sum])
end