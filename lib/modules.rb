module Music
    module ClassModule
        # @@all = []
        def reset_all
          self.all.clear
        end

        def count
          self.all.count
        end

        def find_by_name(name)
            self.all.detect{|a| a.name == name}
        end

        # def all
        #     all
        # end
    end
    module InstanceModule
        def to_param
            name.downcase.gsub(' ', '-')
        end
        def initialize
            self.class.all << self
        end
    end
end