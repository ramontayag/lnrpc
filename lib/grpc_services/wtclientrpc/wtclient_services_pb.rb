# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: wtclientrpc/wtclient.proto for package 'wtclientrpc'

require 'grpc'
require 'wtclientrpc/wtclient_pb'

module Wtclientrpc
  module WatchtowerClient
    # WatchtowerClient is a service that grants access to the watchtower client
    # functionality of the daemon.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'wtclientrpc.WatchtowerClient'

      #
      # AddTower adds a new watchtower reachable at the given address and
      # considers it for new sessions. If the watchtower already exists, then
      # any new addresses included will be considered when dialing it for
      # session negotiations and backups.
      rpc :AddTower, AddTowerRequest, AddTowerResponse
      #
      # RemoveTower removes a watchtower from being considered for future session
      # negotiations and from being used for any subsequent backups until it's added
      # again. If an address is provided, then this RPC only serves as a way of
      # removing the address from the watchtower instead.
      rpc :RemoveTower, RemoveTowerRequest, RemoveTowerResponse
      # ListTowers returns the list of watchtowers registered with the client.
      rpc :ListTowers, ListTowersRequest, ListTowersResponse
      # GetTowerInfo retrieves information for a registered watchtower.
      rpc :GetTowerInfo, GetTowerInfoRequest, Tower
      # Stats returns the in-memory statistics of the client since startup.
      rpc :Stats, StatsRequest, StatsResponse
      # Policy returns the active watchtower client policy configuration.
      rpc :Policy, PolicyRequest, PolicyResponse
    end

    Stub = Service.rpc_stub_class
  end
end
