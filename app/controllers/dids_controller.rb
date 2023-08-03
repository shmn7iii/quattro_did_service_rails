# frozen_string_literal: true

class DidsController < ApplicationController
  def create
    services_json = params['services'].as_json

    render json: CreateDidService.call(services_json:)
  end

  def resolve
    did_longform = params['did']

    render json: ResolveDidService.call(did_longform:)
  end

  def signature
    message_digest = params['messageDigest']
    nonce = params['nonce']
    signing_key_jwk = params['signingKey'].as_json

    render json: CreateDidSignatureService.call(message_digest:, nonce:, signing_key_jwk:)
  end

  def verify
    signature_der = params['signature']
    message_digest = params['messageDigest']
    signing_key_jwk = params['signingKey'].as_json

    render json: VerifyDidService.call(signature_der:, message_digest:, signing_key_jwk:)
  end
end
