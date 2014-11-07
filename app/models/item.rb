class Item < ActiveRecord::Base
	belongs_to :event
	belongs_to :item_category
end
