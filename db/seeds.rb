class Seeder
  class << self
    def call
      new.call
    end
  end

  def call
    ActiveRecord::Base.transaction do
      clear!
      create_users
      create_bands
      create_members
    end

    display_results
  end

  private

  def clear!
    User.destroy_all
    Band.destroy_all
    Member.destroy_all
  end

  def create_users
    5.times do
      @user = User.create(
        email: Faker::Name.first_name \
        + "@gmail.com",
        password_digest: "password"
      )
    end
  end

  def create_bands
    10.times do
      @band = Band.create(name: Faker::Music.unique.band, user_id: @user.id)
    end
  end

  def create_members
    30.times do
      Member.create(
        name: Faker::Name.unique.name,
        band_id: Band.pluck(:id).sample,
        user_id: User.pluck(:id).sample
      )
    end
  end

  def display_results
    puts
    puts '-------------------------------'
    puts 'Seeds results:'
    puts '-------------------------------'
    puts "Created #{User.count} users"
    puts "Created #{Band.count} bands"
    puts "Created #{Member.count} band members"
  end
end

Seeder.call
