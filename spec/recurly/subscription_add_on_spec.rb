require 'spec_helper'

describe SubscriptionAddOn do
  describe ".update_attributes" do
    it "will update subscription add-on tiers" do
      stub_api_request(
        :get, 'subscriptions/5895ce632d88b801b7831b41baba4c8b', 'subscriptions/add_ons/show-200'
      )
      stub_api_request(
        :put, 'subscriptions/5895ce632d88b801b7831b41baba4c8b', 'subscriptions/add_ons/show-200-updated'
      )

      subscription = Subscription.find '5895ce632d88b801b7831b41baba4c8b'
      subscription.update_attributes!(timeframe: "now")
      subscription.subscription_add_ons.length.must_equal 2
      subscription.subscription_add_ons[1].tiers[0].unit_amount_in_cents["USD"].must_equal 4999
    end
  end
end
