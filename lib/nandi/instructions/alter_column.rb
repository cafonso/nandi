# frozen_string_literal: true

module Nandi
  module Instructions
    class AlterColumn
      attr_reader :table, :name, :alterations

      def initialize(table:, name:, **alterations)
        @table = table
        @name = name
        @alterations = alterations
      end

      def procedure
        :alter_column
      end
    end
  end
end