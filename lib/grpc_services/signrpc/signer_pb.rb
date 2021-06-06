# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: signrpc/signer.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("signrpc/signer.proto", :syntax => :proto3) do
    add_message "signrpc.KeyLocator" do
      optional :key_family, :int32, 1
      optional :key_index, :int32, 2
    end
    add_message "signrpc.KeyDescriptor" do
      optional :raw_key_bytes, :bytes, 1
      optional :key_loc, :message, 2, "signrpc.KeyLocator"
    end
    add_message "signrpc.TxOut" do
      optional :value, :int64, 1
      optional :pk_script, :bytes, 2
    end
    add_message "signrpc.SignDescriptor" do
      optional :key_desc, :message, 1, "signrpc.KeyDescriptor"
      optional :single_tweak, :bytes, 2
      optional :double_tweak, :bytes, 3
      optional :witness_script, :bytes, 4
      optional :output, :message, 5, "signrpc.TxOut"
      optional :sighash, :uint32, 7
      optional :input_index, :int32, 8
    end
    add_message "signrpc.SignReq" do
      optional :raw_tx_bytes, :bytes, 1
      repeated :sign_descs, :message, 2, "signrpc.SignDescriptor"
    end
    add_message "signrpc.SignResp" do
      repeated :raw_sigs, :bytes, 1
    end
    add_message "signrpc.InputScript" do
      repeated :witness, :bytes, 1
      optional :sig_script, :bytes, 2
    end
    add_message "signrpc.InputScriptResp" do
      repeated :input_scripts, :message, 1, "signrpc.InputScript"
    end
    add_message "signrpc.SignMessageReq" do
      optional :msg, :bytes, 1
      optional :key_loc, :message, 2, "signrpc.KeyLocator"
    end
    add_message "signrpc.SignMessageResp" do
      optional :signature, :bytes, 1
    end
    add_message "signrpc.VerifyMessageReq" do
      optional :msg, :bytes, 1
      optional :signature, :bytes, 2
      optional :pubkey, :bytes, 3
    end
    add_message "signrpc.VerifyMessageResp" do
      optional :valid, :bool, 1
    end
    add_message "signrpc.SharedKeyRequest" do
      optional :ephemeral_pubkey, :bytes, 1
      optional :key_loc, :message, 2, "signrpc.KeyLocator"
      optional :key_desc, :message, 3, "signrpc.KeyDescriptor"
    end
    add_message "signrpc.SharedKeyResponse" do
      optional :shared_key, :bytes, 1
    end
  end
end

module Signrpc
  KeyLocator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.KeyLocator").msgclass
  KeyDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.KeyDescriptor").msgclass
  TxOut = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.TxOut").msgclass
  SignDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SignDescriptor").msgclass
  SignReq = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SignReq").msgclass
  SignResp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SignResp").msgclass
  InputScript = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.InputScript").msgclass
  InputScriptResp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.InputScriptResp").msgclass
  SignMessageReq = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SignMessageReq").msgclass
  SignMessageResp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SignMessageResp").msgclass
  VerifyMessageReq = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.VerifyMessageReq").msgclass
  VerifyMessageResp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.VerifyMessageResp").msgclass
  SharedKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SharedKeyRequest").msgclass
  SharedKeyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("signrpc.SharedKeyResponse").msgclass
end
