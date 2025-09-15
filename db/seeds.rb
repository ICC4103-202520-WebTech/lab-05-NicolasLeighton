
Room.create!([
  { number: "101", room_type: 0, price: 50000, status: 0 },
  { number: "102", room_type: 1, price: 80000, status: 0 },
  { number: "201", room_type: 2, price: 150000, status: 0 }
])

# Guests
Guest.create!([
  { first_name: "Juan", last_name: "Pérez", email: "juan@example.com", phone: "987654321", document_id: "12345678-9" },
  { first_name: "María", last_name: "González", email: "maria@example.com", phone: "912345678", document_id: "98765432-1" }
])

# Reservations
Reservation.create!([
  { code: "RES001", guest_id: 1, room_id: 1, check_in: Date.today, check_out: Date.today + 3, status: 0, adults: 2, children: 0 },
  { code: "RES002", guest_id: 2, room_id: 2, check_in: Date.today + 1, check_out: Date.today + 4, status: 0, adults: 1, children: 1 }
])

# Services
Service.create!([
  { name: "Minibar", price: 5000, is_active: true },
  { name: "Laundry", price: 7000, is_active: true },
  { name: "Massage", price: 25000, is_active: true }
])

# Service Usage
ServiceUsage.create!([
  { reservation_id: 1, service_id: 1, quantity: 2, used_at: Time.now, note: "Coca-Cola" },
  { reservation_id: 1, service_id: 2, quantity: 1, used_at: Time.now, note: "Shirt and pants" }
])

# Invoices
Invoice.create!([
  { reservation_id: 1, nights_subtotal: 150000, services_subtotal: 12000, tax: 30720, total: 192720, issued_at: Time.now, status: "issued" }
])
