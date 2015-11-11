class Couch < ActiveRecord::Base
belongs_to :user
belongs_to :couch_type
scope :prioridades, -> { order("usuario_id.premium desc").order("created_at desc") }
end