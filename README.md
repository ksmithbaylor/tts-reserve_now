# reserve_now

This is just a simple application to demonstrate the use of ActiveRecord models
and associations to model data. It consists of a Hotel model, a Guest model, and
a "join" model called GuestHotel. We could have also named it Reservation.

The reason we created a model to represent the join between Guest and Hotel is
because we wanted to track more information than just a pairing of a Guest with
a Hotel. So the GuestHotel model also tracks the number of nights and check in/out
dates.

The app was made by following the slides found
[here](http://techtalentsouth.slides.com/techtalentsouth/deck-293-332)
