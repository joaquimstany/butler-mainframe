# This software can perform your custom tasks on a 3270 emulator.
#
# Copyright (C) 2015  Marco Mastrodonato, m.mastrodonato@gmail.com
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License

require 'core/configuration'
require 'core/configuration_dynamic'
require 'config/config'

module ButlerMainframe
  def self.root
    File.expand_path('../..', __FILE__)
  end
end

# TODO
# require 'i18n'
# I18n.load_path=Dir['config/locales/*.yml']
# I18n.locale = ButlerMainframe.configuration.language

env = Rails.env if defined?(Rails)
env ||= $ARGV[0] if $ARGV
env ||= "development"
debug = env == "development" ? true : false
require "mainframe/#{ButlerMainframe.configuration.host_gateway.to_s.downcase}"


ButlerMainframe::Settings.load!(File.join(ButlerMainframe.root,'lib','config','settings.yml'), :env => env)

if ButlerMainframe::Settings.modules_included[:activerecord]
  require 'mainframe/customization/active_record'
  # puts "Extending Host class with #{Host3270::ActiveRecord}" if debug
  ButlerMainframe::Host.include Host3270::ActiveRecord
end

if ButlerMainframe::Settings.modules_included[:generic_functions]
  require 'mainframe/customization/generic_functions'
  # puts "Extending Host class with #{Host3270::GenericFunctions}" if debug
  ButlerMainframe::Host.include Host3270::GenericFunctions
end

if ButlerMainframe::Settings.modules_included[:custom_functions] && defined?(Host3270::CustomFunctions)
  # puts "Extending Host class with #{Host3270::CustomFunctions}" if debug
  ButlerMainframe::Host.include Host3270::CustomFunctions
end

=begin
# To test in irb
require 'butler-mainframe'
host=ButlerMainframe::Host.new
host.scan_page
=end