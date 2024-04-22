mutable struct BusStop
    name::String
    population::Int64
    location::Int64
end

mutable struct Bus
    population::Int64
    max_capacity::Int64
end

mutable struct Passenger
    wait_time::Int64
    travel_time::Int64
    desired_stop::String
end

stop1 = BusStop("Stop1", 5, 10)
stop2 = BusStop("Stop2", 10, 20)

