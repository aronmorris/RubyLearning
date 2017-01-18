class ChangeReturnCalculator
  @@coins = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}

  def self.get_change(given, cost)
    change = (given - cost) * 100

    change_coins = {:quarter => 0, :dime => 0, :nickel => 0, :penny => 0}

    if change < 0 then
      puts 'Too little given!'
      return
    end

    @@coins.each do |coin, value|
      change, change_coins[coin] = get_coin_amt(change, value)
      puts "#{change_coins[coin]} #{coin.to_s}"
    end



  end

  private

  def self.get_coin_amt(amt, coin_val)

    # non-decimal component is the number of times this coin evenly divides the amount
    coin_count = (amt / coin_val).round
    # modulus gets the remainder that hasn't been consumed
    amt = amt % coin_val

    return amt, coin_count
  end

end

ChangeReturnCalculator.get_change(50, 49.99)