# frozen_string_literal: true

class ResolveDidService < BaseService
  def initialize(did_longform:)
    @did_longform = did_longform
  end

  def call
    @did_longform
  end
end
