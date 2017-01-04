module Healthcheck
  class ActiveRecordCheck
    def test
      Rails.application.eager_load!
      ActiveRecord::Base.descendants.map do |klass|
        if klass.table_exists?
          klass.first
          "#{klass.name} OK"
        end
      end.compact.join '<br />'
    end
  end
end