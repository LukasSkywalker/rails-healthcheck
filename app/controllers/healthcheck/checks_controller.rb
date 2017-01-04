require_dependency "healthcheck/application_controller"

module Healthcheck
  class ChecksController < ApplicationController
    def show
      ca = CheckAll.new(ActiveRecordCheck, FakeCheck)
      result = ca.test_all
      render html: result.html_safe
    rescue StandardError => e
      msg = e.message
      m = "FAIL #{msg}" <<
        '<br />' <<
        e.backtrace.reject { |l| l.index('healthcheck').nil? }.join('<br />')
      render html: m.html_safe
    end
  end
end
