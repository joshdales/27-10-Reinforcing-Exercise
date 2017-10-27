ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


def who_wins(ballots)
  standings = {}

  cats = ballots.map {|ballot| ballot.values }.flatten.uniq

  cats.each { |cat| standings[cat] = 0 }
  standings

  standings.each do |cat, score|
    ballots.each do |ballot|
      ballot.each do |k, v|
        if cat == v
          standings[cat] += k
        end
      end
    end
  end
  p standings
  standings.values.max(3)
end

p who_wins(ballots)
