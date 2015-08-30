require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
 test "save TicketTest new record" do
  ticket = Ticket.new()
  assert ticket.save
 end

 test "should check TicketTest record nil or not" do
  ticket = Ticket.new
  assert_nil ticket.id
end

end
