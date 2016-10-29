class Gig < ApplicationRecord
  belongs_to :client
  belongs_to :design_contract
  belongs_to :music_contract
  belongs_to :legal_contract

  def pretty_created_at
    created_at.strftime("%A, %b %d")
  end

  # def id_present_to_customer
  #   34000 + id
  # end

  def calculate_totals
    subtotal_collector = 0
    active_contracts.each do |active_contract|
      subtotal_collector += active_contract.subtotal
    end

    self.subtotal = subtotal_collector
    self.tax = subtotal * 0.09
    self.total = subtotal + tax
    save
  end
end
