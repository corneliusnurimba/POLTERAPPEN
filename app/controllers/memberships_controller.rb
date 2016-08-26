class MembershipsController < ApplicationController

  def new
    @membership = current_user.memberships.build
    @polterabends = Polterabend.all.map do |polterabend|
      [polterabend.title, polterabend.id]
    end
  end

end
