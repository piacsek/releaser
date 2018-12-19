class ReleaserModel
  def initialize(attrs_hash)
    @attributes = attrs_hash
  end

  def method_missing(method, *)
    value = @attributes.fetch(method) { super }
    value.is_a?(Hash) ? ReleaserModel.new(value) : value
  end

  def respond_to_missing?(method, _include_all)
    @attributes.key?(method.to_sym)
  end

  def [](key)
    @attributes.fetch(key.to_sym)
  end
end