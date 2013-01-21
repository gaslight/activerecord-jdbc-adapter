module ArJdbc
  module Derby
    module ExplainSupport

      def supports_explain?; false; end

      # This is here to workaround a bug in current rails 3.2 version
      # wherein explain is called even when supports_explain? is false
      def explain(arel, binds = [])
        "Explain plan is not supported in Derby"
      end
    end
  end
end