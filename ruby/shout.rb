# module Shout
#
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + ":):):)"
#   end
#
# end
#
# p Shout.yell_angrily("damn")
# p Shout.yelling_happily("halleluah")

module Shout

    def yell_angrily(words)
      puts words + "!!!" + " :("
    end

    def yell_happily(words)
      puts words + ":):):)"
    end

end


class Managers
  include Shout
end

class Directors
  include Shout
end


work_manager = Managers.new
work_manager.yell_angrily("damn")

work_director = Directors.new
work_director.yell_happily("woop")
