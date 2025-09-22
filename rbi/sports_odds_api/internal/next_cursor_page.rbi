# typed: strong

module SportsOddsAPI
  module Internal
    class NextCursorPage
      include SportsOddsAPI::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(String) }
      attr_accessor :next_cursor

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
