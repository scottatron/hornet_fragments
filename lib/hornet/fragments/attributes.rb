require 'active_support/concern'

module Hornet
  module Fragments
    module Attributes
      extend ActiveSupport::Concern

      module ClassMethods

        def fragment_accessor(attribute, type = :string)

          has_one "#{attribute}_fragment".to_sym, as: :fragmentable, class_name: 'Fragment'

          instance_methods = Module.new do

            define_method "_#{attribute}_fragment" do
              send("#{attribute}_fragment").present? ? send("#{attribute}_fragment") : send("build_#{attribute}_fragment")
            end

            define_method attribute do
              send("_#{attribute}_fragment").value
            end

            define_method "#{attribute}=" do |val|
              send("_#{attribute}_fragment").value = val
            end

          end

          include instance_methods

          # Tell's simple_form what to use by default
          columns_hash[attribute.to_s] = OpenStruct.new(type: type)

        end

      end
    end
  end
end
