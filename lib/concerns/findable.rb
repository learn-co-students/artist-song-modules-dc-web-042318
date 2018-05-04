module Findable
  module ClassMethods
    def find_by_name(name)
      all.detect{|a| a.name == name}
    end

  end

  module InstanceMethods

  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end
