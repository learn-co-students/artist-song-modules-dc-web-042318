module Paramable
  module ClassMethods

  end

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end

  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end
