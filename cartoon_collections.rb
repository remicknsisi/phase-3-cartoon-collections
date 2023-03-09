def roll_call_dwarves arr
  arr.to_enum.with_index { |n, index| puts "#{index + 1}. #{n}"}
end

def summon_captain_planet arr
  arr.map do |e|
    e.split('').first.upcase() + e.slice(1, arr.length - 1) + "!"
  end
end

def long_planeteer_calls arr
  arr.any? {|element| element.split('').count > 4}
end

def find_the_cheese arr
  cheese_types = ["cheddar", "gouda", "camembert"]

  if arr.include?(cheese_types[0])
    "cheddar"
  elsif arr.include?(cheese_types[1])
    "gouda"
  elsif arr.include?(cheese_types[2])
    "camembert"
  else
    nil
  end

end
