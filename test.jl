using Combinatorics

function random_walk(n, x)
    # Check if (n+x)/2 is an integer
    if (n + x) % 2 == 0
        # Calculate the number of ways to end up at position x
        ways = binomial(n, (n + x) / 2)
        # Calculate the total number of possible walks
        total = 2^n
        # Return the probability
        return ways / total
    else
        # If (n+x)/2 is not an integer, it's impossible to end up at position x
        return 0
    end
end

# Test the function
n = 10
x = 0
probability = random_walk(n, x)
println("Probability of ending at position $x after $n steps: ", probability)