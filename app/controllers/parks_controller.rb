class ParksController < ApplicationController

  def index
    if params[:name].present?
      @parks = Park.where("name like ?", "%#{params[:name]}%")
    else
      @parks = Park.all
    end
    respond_to do |format|
      format.json {
        render json: {
          :html => render_to_string(:partial => 'parks/index_item', :formats => :html, :locals => { :parks => @parks })
        }
      }
      format.html{

      }
    end
  end

  def show
    @park = Park.find params[:id]
    @slots_all = @park.slots.order(:s_id, :begin_time).group_by{|sl| sl.s_id}

    @slots = []
    @slots_all.each do |k, v|
      @slots << v[0]
    end

    respond_to do |format|
      format.json {
        render json: {
          :html => render_to_string(:partial => 'parks/show_item', :formats => :html, :locals => { :slots => @slots })
        }
      }
      format.html{

      }
    end

  end

end