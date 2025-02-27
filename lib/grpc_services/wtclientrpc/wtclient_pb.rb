# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: wtclientrpc/wtclient.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("wtclientrpc/wtclient.proto", :syntax => :proto3) do
    add_message "wtclientrpc.AddTowerRequest" do
      optional :pubkey, :bytes, 1
      optional :address, :string, 2
    end
    add_message "wtclientrpc.AddTowerResponse" do
    end
    add_message "wtclientrpc.RemoveTowerRequest" do
      optional :pubkey, :bytes, 1
      optional :address, :string, 2
    end
    add_message "wtclientrpc.RemoveTowerResponse" do
    end
    add_message "wtclientrpc.GetTowerInfoRequest" do
      optional :pubkey, :bytes, 1
      optional :include_sessions, :bool, 2
    end
    add_message "wtclientrpc.TowerSession" do
      optional :num_backups, :uint32, 1
      optional :num_pending_backups, :uint32, 2
      optional :max_backups, :uint32, 3
      optional :sweep_sat_per_byte, :uint32, 4
    end
    add_message "wtclientrpc.Tower" do
      optional :pubkey, :bytes, 1
      repeated :addresses, :string, 2
      optional :active_session_candidate, :bool, 3
      optional :num_sessions, :uint32, 4
      repeated :sessions, :message, 5, "wtclientrpc.TowerSession"
    end
    add_message "wtclientrpc.ListTowersRequest" do
      optional :include_sessions, :bool, 1
    end
    add_message "wtclientrpc.ListTowersResponse" do
      repeated :towers, :message, 1, "wtclientrpc.Tower"
    end
    add_message "wtclientrpc.StatsRequest" do
    end
    add_message "wtclientrpc.StatsResponse" do
      optional :num_backups, :uint32, 1
      optional :num_pending_backups, :uint32, 2
      optional :num_failed_backups, :uint32, 3
      optional :num_sessions_acquired, :uint32, 4
      optional :num_sessions_exhausted, :uint32, 5
    end
    add_message "wtclientrpc.PolicyRequest" do
    end
    add_message "wtclientrpc.PolicyResponse" do
      optional :max_updates, :uint32, 1
      optional :sweep_sat_per_byte, :uint32, 2
    end
  end
end

module Wtclientrpc
  AddTowerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.AddTowerRequest").msgclass
  AddTowerResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.AddTowerResponse").msgclass
  RemoveTowerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.RemoveTowerRequest").msgclass
  RemoveTowerResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.RemoveTowerResponse").msgclass
  GetTowerInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.GetTowerInfoRequest").msgclass
  TowerSession = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.TowerSession").msgclass
  Tower = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.Tower").msgclass
  ListTowersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.ListTowersRequest").msgclass
  ListTowersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.ListTowersResponse").msgclass
  StatsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.StatsRequest").msgclass
  StatsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.StatsResponse").msgclass
  PolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.PolicyRequest").msgclass
  PolicyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("wtclientrpc.PolicyResponse").msgclass
end
