class EventsController < ApplicationController
	def index
		@event = Event.new
		@events = Event.all
	end

	def create
		@event = Event.new(event_params)
    	@event.user_id = current_user.id

	    respond_to do |format|
	      if @event.save
	        format.html { redirect_to events_path, notice: 'Evento criado com sucesso' }
	        format.json { render :show, status: :created, location: events_path }
	      else
	        format.html { render :new }
	        format.json { render json: @event.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		respond_to do |format|
		      format.html { redirect_to events_path, notice: 'O Evento foi deletado com sucesso' }
		      format.json { head :no_content }
    	end
  	end

	  def update
	  	@event = Event.find(params[:id])
	    respond_to do |format|
	      if @event.update(event_params)
	        format.html { redirect_to events_path, notice: 'O evento foi editado com sucesso' }
	        format.json { render :show, status: :ok, location: @event }
	      else
	        format.html { render :edit }
	        format.json { render json: @event.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	private
	    def event_params
      params.require(:event).permit(:title, :description, :event_date, :important, :event_start, :event_end, :user_id)
    end
end
