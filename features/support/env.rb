require 'aruba/cucumber'

module ArubaOverrides
  def detect_ruby(cmd)
    "ruby ../../#{cmd}"
  end
end

World(ArubaOverrides)