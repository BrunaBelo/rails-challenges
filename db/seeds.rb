user = User.create(:email => 'user@gmail.com', :password => '123456', :password_confirmation => '123456')

tags = Tag.create([
        { name: 'Editorial', color: '#4d94ff' },
        { name: 'Q1 Goals', color: '#d147a3' },
        { name: 'Recruiting', color: '#4dff88' },
        { name: 'Mobile', color: '#ffd11a' },
        { name: 'Website', color: '#ff4da6' },
        { name: 'Sales', color: '#ccff33' }
    ])

Task.create(:user => user, :description => 'Quarterly newsletter', :date => Date.tomorrow, :tags =>  [tags[0]])
Task.create(:user => user, :description => 'Recruiting blog post', :date => Date.today, :tags =>  [tags[0]])
Task.create(:user => user, :description => 'Mobile app launch', :date => Date.today,  :tags =>  [tags[1]])
Task.create(:user => user, :description => 'Interview John H.', :date => Date.today,  :tags =>  [tags[2]])
Task.create(:user => user, :description => 'Submit updates to mobile storefronts', :date => Date.today,  :tags =>  [tags[3]] )
Task.create(:user => user, :description => 'Schedule meeting with Alex', :date => Date.tomorrow + 1.day,  :tags =>  [] )
Task.create(:user => user, :description => 'Homepage refresh', :date => Date.tomorrow + 1.day,  :tags => [tags[4]])
Task.create(:user => user, :description => 'Onboard new Sales team members', :date => Date.tomorrow + 2.day,  :tags => [tags[5]])
Task.create(:user => user, :description => 'Review editorial calendar', :date => Date.tomorrow + 3.day,  :tags => [tags[0]])