module Healthcheck
  class FakeCheck
    def test
      1 / 0
      "Fake OK<br />"
    end
  end
end