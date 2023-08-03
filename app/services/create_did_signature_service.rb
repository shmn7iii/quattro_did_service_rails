# frozen_string_literal: true

class CreateDidSignatureService < BaseService
  def initialize(message_digest:, nonce:, signing_key_jwk:)
    @message_digest = message_digest
    @nonce = nonce
    @signing_key_jwk = signing_key_jwk
  end

  def call
    signing_key = Sidetree::Key.from_jwk(@signing_key_jwk)

    signature = ECDSA.sign(ECDSA::Group::Secp256k1, signing_key.private_key, @message_digest.htb, @nonce)
    signature_der = ECDSA::Format::SignatureDerString.encode(signature)
    signature_der.bth

    {
      signature: signature_der.bth
    }
  end
end
