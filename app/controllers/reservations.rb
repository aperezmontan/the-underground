get '/reservations' do
  reservations_by_event = Reservation.all.includes(:event).group_by(&:event)
  erb :'reservations/show', locals:{reservations: reservations_by_event}
end
