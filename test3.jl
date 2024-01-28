function dice_probability(sum::Int, dice::Int)
    # Initialize the probability array
    dp = zeros(Float64, dice+1, 6*dice+1)
    dp[0, 0] = 1.0

    # Calculate the probabilities
    for i in 1:dice
        for j in i:6*i
            for k in 1:min(j, 6)
                dp[i, j] += dp[i-1, j-k]
            end
            dp[i, j] /= 6.0
        end
    end

    # Return the probability of the given sum
    return dp[dice, sum]
end

# Test the function
println(dice_probability(7, 2))  # Probability of getting a sum of 7 with 2 dice