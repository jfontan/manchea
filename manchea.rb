#!/usr/bin/env ruby

require 'rubygems'
require 'ramaze'
require 'stone'

class MainController < Ramaze::Controller
    engine :Haml
    layout :layout
    
    def index
        "lero"
    end
    
    def new_group
        if request.post?
            group=Group.new
            group.name=request["name"]
            group.description=request["description"]
            group.public=(request["public"] ? 1 : 0)
            group.save
        end
    end
end


# Initialize stone persistence library
Stone.start(Dir.pwd, Dir.glob(File.join(Dir.pwd,"models/*")))

Ramaze.start 
#:load_engines => [:Haml, :Sass]

