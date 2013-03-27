class BenchesController < ApplicationController


  def index
    @benches = Bench.all
  end

  def show
    @bench = Bench.find(params[:id])
  end

  def new
    @bench = Bench.new
    @locations = Location.all
  end

  def create
    @bench = Bench.new(params[:bench])
    if @bench.save
      redirect_to bench_path(@bench)
    else
      render :new
    end
  end
end
