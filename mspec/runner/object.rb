class Object
  def before(at=:each, &block)
    MSpec.current.before at, &block
  end

  def after(at=:each, &block)
    MSpec.current.after at, &block
  end

  def describe(mod, msg=nil, &block)
    MSpec.describe mod, msg, &block
  end

  def it(msg, &block)
    MSpec.current.it msg, &block
  end
  
  alias_method :context, :describe
  alias_method :specify, :it
end
