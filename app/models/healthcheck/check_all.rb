module Healthcheck
  class CheckAll
    def initialize(*klasses)
      @klasses = klasses
    end

    def test_all
      @klasses.map do |klass|
        "<h3>#{klass.name}</h3>" <<
          "#{klass.new.test}"
      end.compact.join '<br />'
    end
  end
end
