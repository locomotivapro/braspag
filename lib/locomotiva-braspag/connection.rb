module Braspag
  class Connection
    include Singleton

    PRODUCTION_URL = "https://transaction.pagador.com.br"
    HOMOLOGATION_URL = "https://homologacao.pagador.com.br"

    PROTECTED_CARD_PRODUCTION_URL = "https://cartaoprotegido.braspag.com.br/Services"
    PROTECTED_CARD_HOMOLOGATION_URL = "https://homologacao.braspag.com.br/services/testenvironment"

    attr_reader :braspag_url, :protected_card_url, :merchant_id, :crypto_url, :crypto_key, :options, :environment

    def initialize
      raise InvalidEnv if ENV["BRASPAG_ENV"].nil? || ENV["BRASPAG_ENV"].empty?

      @options = YAML.load_file(Braspag.config_file_path)[ ENV['BRASPAG_ENV'] ]
      @merchant_id = @options['merchant_id']

      raise InvalidMerchantId unless @merchant_id =~ /\{[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}\}/i

      @crypto_key  = @options["crypto_key"]
      @crypto_url  = @options["crypto_url"]
      @environment = @options["environment"]

      @braspag_url = @options["pagador_url"] || default_env_configuration[:pagador][@environment]
      @protected_card_url = @options["protected_card_url"] || default_env_configuration[:protected_card][@environment]
    end

    def default_env_configuration
      {
        :pagador => {
          "production"   => PRODUCTION_URL,
          "homologation" => HOMOLOGATION_URL
        },
        :protected_card  => {
          "production"   => PROTECTED_CARD_PRODUCTION_URL,
          "homologation" => PROTECTED_CARD_HOMOLOGATION_URL
        }
      }
    end

    def production?
      @environment == 'production'
    end

    def homologation?
      @environment == 'homologation'
    end
  end
end
