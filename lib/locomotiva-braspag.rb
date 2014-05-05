require 'singleton'
require 'httpi'
require 'nokogiri'
require 'json'
require 'savon'

require "locomotiva-braspag/version"
require 'locomotiva-braspag/connection'
require 'locomotiva-braspag/payment_method'
require 'locomotiva-braspag/crypto/jar_webservice'
require 'locomotiva-braspag/crypto/webservice'
require 'locomotiva-braspag/bill'
require 'locomotiva-braspag/poster'
require 'locomotiva-braspag/credit_card'
require 'locomotiva-braspag/protected_credit_card'
require 'locomotiva-braspag/eft'
require 'locomotiva-braspag/errors'
require 'locomotiva-braspag/utils'
require 'locomotiva-braspag/order'

module Braspag
  def self.logger=(value)
    @logger = value
  end

  def self.logger
    @logger
  end

  def self.config_file_path=(path)
    @config_path = path
  end

  def self.config_file_path
    @config_path || 'config/braspag.yml'
  end

  def self.proxy_address=(value)
    @proxy_address = value
  end

  def self.proxy_address
    @proxy_address
  end
end
