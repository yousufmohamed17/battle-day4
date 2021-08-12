class Game

DEFAULT_ATTACK = 10

def attacked(who)
  who.hp -= DEFAULT_ATTACK
end

end