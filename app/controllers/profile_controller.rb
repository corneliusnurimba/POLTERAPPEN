class ProfileController < ApplicationController

    def show
      @polterabends = []

      current_user.memberships.each do |membership|
        @polterabends <<  Polterabend.find_by_id(membership.polterabend_id)


      end
    end
  end

