module Employee
  def self.included(base)
    base.send :extend, ClassMethods
  end
end

module ClassMethods
end


module InstanceMethods
end
