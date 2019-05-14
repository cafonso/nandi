# frozen_string_literal: true

module Nandi
  module Validation
    class AddColumnValidator
      def self.call(instruction)
        new(instruction).call
      end

      def initialize(instruction)
        @instruction = instruction
      end

      def call
        Result.new(@instruction).tap do |result|
          result << "column isn't nullable" unless nullable?
          result << "column has a default" if default?
          result << "column is unique" if unique?
        end
      end

      attr_reader :instruction

      private

      def nullable?
        instruction.extra_args[:null]
      end

      def default?
        instruction.extra_args.key?(:default)
      end

      def unique?
        instruction.extra_args.fetch(:unique, false)
      end
    end
  end
end
