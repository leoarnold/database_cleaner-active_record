# See: https://github.com/DatabaseCleaner/database_cleaner/pull/681
return if Gem::Version.new(DatabaseCleaner::VERSION) < Gem::Version.new("2.0.2")

module DatabaseCleaner
  module ActiveRecord
    class SerializableTransaction < Transaction
      TRANSACTION_PARAMETERS = { isolation: :serializable }.freeze
    end
  end
end
