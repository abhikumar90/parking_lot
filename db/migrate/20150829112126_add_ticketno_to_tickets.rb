class AddTicketnoToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :ticket_no, :string
    add_column :tickets, :car_id, :integer
    add_column :tickets, :parking_slot_id, :integer
  end
end
