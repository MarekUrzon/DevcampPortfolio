module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new( name:       'Tony Halik',
                    first_name: 'Tony',
                    last_name:  'Halik',
                    email:      'okok@ok.com'
                    )
  end
end
