#!/usr/bin/env ruby

require 'rubygems'
require 'ramaze'
require 'stone'

class MainController < Ramaze::Controller
    def index
        'Benvido a manchea!'
    end
end


# Initialize stone persistence library
Stone.start(Dir.pwd, Dir.glob(File.join(Dir.pwd,"models/*")))

Ramaze.start


