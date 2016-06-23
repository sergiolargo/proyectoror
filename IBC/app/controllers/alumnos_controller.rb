class AlumnosController < ApplicationController
  def index
    @alumno = Alumno.all
  end

  def new
    @alumno = Alumno.new
  end

  def create
    @alumno = Alumno.new(alumno_params)
    if @alumno.save
      redirect_to '/alumnos'
    else
      render 'new'
    end
  end

  def show
    @alumno = Alumno.find(params[:id])
  end

  def destroy
    @alumno = Alumno.find(params[:id])
    @alumno.destroy
    redirect_to '/alumnos'
  end

  def edit
    @alumno = Alumno.find(params[:id])
  end

  def update
    @alumno = Alumno.find(params[:id])
    if @alumno.update(alumno_params)
      redirect_to '/alumnos'
    else
      render 'edit'
    end
  end

  private
    def alumno_params
      params.require(:alumno).permit(:nombre_a, :app, :apm, :direccion, :fecha_nac, :telefono, :email)
    end
    
end




