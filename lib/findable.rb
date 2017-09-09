module Findable
    def self.find_by_name(name)
      self.all.detect{|o| o.name}
    end
end
