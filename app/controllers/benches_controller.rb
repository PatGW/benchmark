class BenchesController < ApplicationController

  def new
    @bench = Bench.new
    @locations = Location.all
  end

  def index
    @benches = Bench.all
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
