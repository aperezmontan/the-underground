get '/reservations' do
  require_logged_in
  require_logged_in
  require_logged_in
  require_logged_in
  reservations_by_event = Reservation.all.includes(:event).group_by(&:event)
  erb :'reservations/show', locals:{reservations: reservations_by_event}
end
