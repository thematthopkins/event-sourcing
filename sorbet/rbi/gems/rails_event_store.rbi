# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rails_event_store/all/rails_event_store.rbi
#
# rails_event_store-2.2.0

module RailsEventStore
end
module RailsEventStore::AsyncHandler
  def self.prepended(host_class); end
  def self.with(event_store: nil, serializer: nil); end
  def self.with_defaults; end
end
module RailsEventStore::CorrelatedHandler
  def perform(event); end
end
class RailsEventStore::LinkByMetadata < RubyEventStore::LinkByMetadata
  def initialize(key:, event_store: nil, prefix: nil); end
end
class RailsEventStore::LinkByCorrelationId < RubyEventStore::LinkByCorrelationId
  def initialize(event_store: nil, prefix: nil); end
end
class RailsEventStore::LinkByCausationId < RubyEventStore::LinkByCausationId
  def initialize(event_store: nil, prefix: nil); end
end
class RailsEventStore::LinkByEventType < RubyEventStore::LinkByEventType
  def initialize(event_store: nil, prefix: nil); end
end
class RailsEventStore::AfterCommitAsyncDispatcher
  def async_record(schedule_proc); end
  def call(subscriber, _, record); end
  def initialize(scheduler:); end
  def run(&schedule_proc); end
  def verify(subscriber); end
end
class RailsEventStore::AfterCommitAsyncDispatcher::AsyncRecord
  def add_to_transaction; end
  def before_committed!; end
  def committed!(*arg0); end
  def dispatcher; end
  def initialize(dispatcher, schedule_proc); end
  def rolledback!(*arg0); end
  def schedule_proc; end
  def trigger_transactional_callbacks?; end
end
class RailsEventStore::ActiveJobScheduler
  def call(klass, record); end
  def initialize(serializer:); end
  def serializer; end
  def verify(subscriber); end
end
class RailsEventStore::Client < RubyEventStore::Client
  def default_request_metadata; end
  def initialize(mapper: nil, repository: nil, subscriptions: nil, dispatcher: nil, clock: nil, correlation_id_generator: nil, request_metadata: nil); end
  def request_metadata; end
  def with_request_metadata(env, &block); end
end
class RailsEventStore::Middleware
  def call(env); end
  def config; end
  def initialize(app); end
end
class RailsEventStore::Railtie < Rails::Railtie
end
class RubyEventStore::Browser::App < Sinatra::Base
  def self.environment; end
  def self.environment=(val); end
  def self.environment?; end
  def self.public_folder; end
  def self.public_folder=(val); end
  def self.public_folder?; end
end
