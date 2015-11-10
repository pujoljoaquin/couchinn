class Couch < ActiveRecord::Base
belongs_to :user
scope :prioridades, -> { order("usuario_id.premium desc").order("created_at desc") }
end