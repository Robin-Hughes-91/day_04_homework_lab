def get_name(person)
  return person[:name]
end

def getting_show(person2)
  return person2[:favourites][:tv_show]
end

def likes_to_eat(person2, food)
  return person2[:favourites][:snacks].include?(food)


end

def add_friend(person2, name)
  person2[:friends].push(name).length
end

def add_friend(person2, name)
  person2[:friends].push(name).length #or .push(name)
end



def remove_friend(person3, name)
  person3[:friends].delete(name)
  person3[:friends].length
end

# def total_money(people, money)
#   people[:monies].sum()
# end




def total_money( people)
  total_money = 0

  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def loan_money(lender, lendee, amount)

  lender[:monies] -= amount
  lendee[:monies] += amount
end

def everyones_favourited_food(people)
  result = ""

  for person in people
    for snack in person[:favourites][:snacks]
      result.concat(snack + " ")
    end
  end
  return result
end




def people_with_no_friends(people)

people_with_no_friends = []

  for person in people
    if person[:friends].length == 0
      people_with_no_friends.push(person) #or <<
    end
  end
    return people_with_no_friends
end
