if defined?(ChefSpec)
  def set_timezone(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:timezone, :set, resource_name)
  end
end
