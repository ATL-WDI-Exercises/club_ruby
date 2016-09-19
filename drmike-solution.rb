people_in_line = [
  { name: "Jack", age: 16 },
  { name: "Sam", age: 21 },
  { name: "Jill", age: 23 },
  { name: "Paul", age: 20 },
  { name: "Mike", age: 16 },
  { name: "Stan", age: 70 },
  { name: "Chris", age: 17 },
  { name: "Julie", age: 45 },
  { name: "Suzy", age: 65 },
  { name: "Eli", age: 28 },
  { name: "Katie", age: 50 },
  { name: "Ben", age: 33 }
]

people_in_club = []
people_rejected = []

people_in_line.each do |person|
  person[:canDrink] = person[:age] >= 21
  people_in_club.push(person) if person[:age] >= 18
  people_rejected.push(person) unless person[:age] >= 18
  break if people_in_club.length === 8
end

puts "=== People In Club ==="
puts people_in_club.join("\n")

puts "\n=== People Rejected ==="
puts people_rejected.join("\n")
