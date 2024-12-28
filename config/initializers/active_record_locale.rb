class ActiveRecord::Base
  def self.has_translation(*attributes)    
    attributes.each do |attribute|
      define_method "#{attribute}" do
        self.send "#{attribute}_#{I18n.locale}"
      end
    end
  end
end