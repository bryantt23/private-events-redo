class AddAttendeeAttendedToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :attendee_id, :integer
    add_index :invites, :attendee_id
    
      add_column :invites, :attended_event_id, :integer
      add_index :invites, :attended_event_id
  end
end
