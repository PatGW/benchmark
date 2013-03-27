class BenchFactory

def self.bench    # User.create!(:email => '', :password => "")
    bench = Bench.new
    bench.location_id = 1
    bench.description = "amazeballs bench"
    bench
  end

end