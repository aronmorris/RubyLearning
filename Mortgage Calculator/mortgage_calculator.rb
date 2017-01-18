class MortgageCalculator

  attr_accessor :mortgage_total, :mortgage_term, :interest_rate

  # term is in years
  # interest rate is a float between 0-1
  def monthly_payments(&interest_calc)

    total_due = yield mortgage_total, mortgage_term, interest_rate if block_given?

    monthly_payment = total_due / (mortgage_term * 12) # monthly payment * years of mortgage

    return monthly_payment

  end

end

monthly = Proc.new do |total, term, rate|
  total * (1 + (rate / 12)) ** (12 * term)
end

weekly = Proc.new do |total, term, rate|
  total * (1 + (rate / 52)) ** (52 * term)
end

daily = Proc.new do |total, term, rate|
  total * (1 + (rate / 365)) ** (365 * term)
end

continuous = Proc.new do |total, term, rate|
  total * Math::E ** (rate * term)
end

periods = [monthly, weekly, daily, continuous]

calc = MortgageCalculator.new

calc.mortgage_total = 10_000
calc.mortgage_term = 5
calc.interest_rate = 0.15

periods.each do |period|
 puts '%.2f' % calc.monthly_payments(&period)
end