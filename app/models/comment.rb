class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  belongs_to :viewpoint, :class_name => "Viewpoint", :foreign_key => "commentable_id"
  belongs_to :user
end
