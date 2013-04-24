module Braspag
  class Error < Exception; end
  class InvalidConnection < Error ; end
  class InvalidMerchantId < Error ; end
  class InvalidConnection < Error ; end
  class IncompleteParams < Error ; end
  class InvalidOrderId < Error ; end
  class InvalidCustomerName < Error ; end
  class InvalidCustomerId < Error ; end
  class InvalidNumber < Error ; end
  class InvalidInstructions < Error ; end
  class InvalidExpirationDate < Error ; end
  class InvalidStringFormat < Error ; end
  class InvalidPost < Error ; end
  class InvalidPaymentMethod < Error ; end
  class InvalidAmount < Error ; end
  class InvalidInstallments < Error ; end
  class InvalidHasInterest < Error ; end
  class InvalidIP < Error; end
  class InvalidCryptKey < Error; end
  class InvalidEncryptedKey < Error; end
  class InvalidHolder < Error ; end
  class InvalidExpirationDate < Error ; end
  class InvalidSecurityCode < Error ; end
  class InvalidType < Error ; end
  class InvalidNumberPayments < Error ; end
  class InvalidNumberInstallments < Error ; end
  class InvalidJustClickKey < Error ; end
  class UnknownError < Error ; end

  class Connection
    class InvalidMerchantId < Error ; end
    class InvalidEnv < Error ; end
    class InvalidBraspagUrl < Error ; end
  end

  class Order
    class InvalidData < Error; end
  end
end
