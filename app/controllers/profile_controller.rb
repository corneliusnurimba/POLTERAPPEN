class ProfileController < ApplicationController

    def show
      @polterabend = Polterabend.find_by_id(current_user.membership.polterabend_id)
    end
  end

