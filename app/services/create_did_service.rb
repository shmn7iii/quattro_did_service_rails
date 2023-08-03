# frozen_string_literal: true

class CreateDidService < BaseService
  def initialize(services_json:)
    @services_json = services_json
  end

  def call
    signing_key = Sidetree::Key.generate(id: 'signing-key')
    recovery_key = Sidetree::Key.generate
    update_key = Sidetree::Key.generate

    services = @services_json.map do |service|
      Sidetree::Model::Service.new(service['id'], service['type'], service['serviceEndpoint'])
    end

    document = Sidetree::Model::Document.new(public_keys: [signing_key], services:)

    did = Sidetree::DID.create(document, update_key, recovery_key, method: Sidetree::Params::METHODS[:ion])

    {
      did: did.to_s,
      signingKey: signing_key.to_jwk(include_privkey: true),
      recoveryKey: recovery_key.to_jwk(include_privkey: true),
      updateKey: update_key.to_jwk(include_privkey: true)
    }
  end
end
