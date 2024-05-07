class EventController < ApplicationController
  def new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_path, notice: 'event créé avec succès!'
      flash[:success] = "C'EST UN SUCCES!BRAVO!" #pour afficher le bandeau alerte (Voir html new)
    else
      render :new
      flash[:danger] = "C'EST FOIRE" #pour afficher le bandeau alerte (Voir html index)
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def edit
  end

  def destroy
  end


end
