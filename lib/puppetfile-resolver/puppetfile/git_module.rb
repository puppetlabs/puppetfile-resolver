# frozen_string_literal: true

require 'puppetfile-resolver/puppetfile/base_module'

module PuppetfileResolver
  module Puppetfile
    class GitModule < BaseModule
      attr_accessor :remote, :ref, :commit, :tag

      def initialize(title)
        super
        @module_type = GIT_MODULE
      end
    end
  end
end
