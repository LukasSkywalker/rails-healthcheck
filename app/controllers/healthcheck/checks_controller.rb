require_dependency "healthcheck/application_controller"

module Healthcheck
  class ChecksController < ApplicationController
    def show
      ca = CheckAll.new(ActiveRecordCheck, FakeCheck)
      result = ca.test_all
      render html: result.html_safe
    end
  end
end
