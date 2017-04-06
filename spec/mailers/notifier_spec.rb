require "rails_helper"

RSpec.describe Notifier, type: :mailer do
  describe "order_received" do

    let(:mail) { Notifier.order_received (order)}

    let!(:order) { create(:order) }

  end

end
