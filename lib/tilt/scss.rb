require 'sinatra/tilt'

module Tilt

  class ScssTemplate < SassTemplate


    def prepare
      @engine = ::Sass::Engine.new(data, sass_options.merge(:syntax => :scss))
    end


  end

  register 'scss', ScssTemplate

end

module Sinatra
  module Templates

    def scss(template, options={}, locals={})
      render :scss, template, options, locals
    end

  end
end
