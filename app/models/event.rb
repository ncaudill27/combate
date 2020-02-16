class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_and_belongs_to_many :divisions
  accepts_nested_attributes_for :divisions, reject_if: proc {|attr| attr['name'].blank? }

  def divisions_attributes=(division_attributes)
    division_attributes.values.each do |division_attribute|
      division_attribute[:style].each do |style|
        division = Division.create()
      end
    end
  end
end
