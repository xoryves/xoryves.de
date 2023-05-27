# frozen_string_literal: true

module Nanoc::Filters
  class Asciidoctor < Nanoc::Filter
    identifier :asciidoctor
  
    require 'asciidoctor'
    requires 'asciidoctor-html5s'
  
    def run(content, params = {})
      ::Asciidoctor.convert(content, params)
    end
  end
end