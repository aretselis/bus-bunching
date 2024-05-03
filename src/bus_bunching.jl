mutable struct BusStop
    name::String
    population::Int64
    location::Int64
end

mutable struct Bus
    population::Int64
    max_capacity::Int64
    start_time::Int64
    next_stop::Int64
    time_to_next_stop::Int64
end

mutable struct Passenger
    wait_time::Int64
    travel_time::Int64
    desired_stop::String
end

stop1 = BusStop("Stop1", 5, 10)
stop2 = BusStop("Stop2", 10, 20)
stop3 = BusStop("Stop3", 25, 30)
stop4 = BusStop("Stop4", 30, 40)
stop5 = BusStop("Stop5", 25, 50)

bus1 = Bus(10)
bus2 = Bus(20)

list_of_buses = [bus1, bus2]
list_of_stops = [stop1, stop2, stop3, stop4, stop5]

time_to_load_passenger = 20
time_to_travel = 300
time = 0
max_simulation_time = 10000

for i in 0:max_simulation_time
    time += 1
    # Bus movement
    for bus in list_of_buses
        # Check if the bus has started yet
        if bus.start_time > time
            bus.time_to_next_stop -= 1
        end
    end
    # Did bus reach stop?

end
