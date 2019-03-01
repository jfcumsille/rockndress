class PagesController < ApplicationController
    def index
    end

    def how
    end

    def login
        @user = User.new
    end
end
