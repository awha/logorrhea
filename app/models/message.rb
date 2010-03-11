class Message < ActiveRecord::Base
  # Associations
  belongs_to :user
  
  has_one :reply,
          :class_name => "Message",
          :foreign_key => "reply_to"
  
   validates_presence_of :text, :priority            
            
            
  # Named Scopes
  named_scope :recent,             
              {:order => 'created_at DESC', :limit => 5}
             
              
  named_scope :type_message
              lambda {(priority) |
              {:conditions => ['priority = ?' , priority]}
              }
              
  named_scope :messages_for_user
              lambda {(user) |
              {:conditions => ['user_id = ?' , user]}
              }  
              
 named_scope :messages_for_team
              lambda {(team) |
              {:conditions => ['user_id in (select id from users where team_id = ?)', team]}
              }            
  
end
