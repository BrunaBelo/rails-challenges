user = User.create(:email => 'user@gmail.com', :password => '123456', :password_confirmation => '123456')

tags = Tag.create([
        { name: 'Editorial' },
        { name: 'Q1 Goals' },
        { name: 'Recruiting' },
        { name: 'Mobile' },
        { name: 'Website' },
        { name: 'Sales' }
    ])

Task.create(:user => user, :description => 'Quarterly newsletter', :date => '2020-11-20', :tags =>  [tags[0]])
Task.create(:user => user, :description => 'Recruiting blog post', :date => '2020-11-20', :tags =>  [tags[0]])
Task.create(:user => user, :description => 'Mobile app launch', :date => '2020-11-21',  :tags =>  [tags[1]])
Task.create(:user => user, :description => 'Interview John H.', :date => '2020-11-23',  :tags =>  [tags[2]])
Task.create(:user => user, :description => 'Submit updates to mobile storefronts', :date => '2020-11-20',  :tags =>  [tags[3]] )
Task.create(:user => user, :description => 'Schedule meeting with Alex', :date => '2020-11-20',  :tags =>  [] )
Task.create(:user => user, :description => 'Homepage refresh', :date => '2020-11-20',  :tags => [tags[4]])
Task.create(:user => user, :description => 'Onboard new Sales team members', :date => '2020-11-20',  :tags => [tags[5]])
Task.create(:user => user, :description => 'Review editorial calendar', :date => '2020-11-20',  :tags => [tags[0]])