# frozen_string_literal: true

class VerifyDidService < BaseService
  def initialize(signature_der:, message_digest:, signing_key_jwk:)
    @signature_der = signature_der
    @message_digest = message_digest
    @signing_key_jwk = signing_key_jwk
  end

  def call
    @signing_key = Sidetree::Key.from_jwk(@signing_key_jwk)

    signature = ECDSA::Format::SignatureDerString.decode(@signature_der.htb)
    success = ECDSA.valid_signature?(@signing_key.public_key, @message_digest.htb, signature)

    { success: }
  end
end
