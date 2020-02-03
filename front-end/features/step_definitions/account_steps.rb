Given("I am a new user accessing the website") do
    visit("http://automationpractice.com/index.php?controller=authentication&back=my-account")
end

Given("create a new account using {string}") do |email|
    within("#create-account_form") do
        email = "automationpractice.test+#{Time.now.to_i}@mailinator.com"
        fill_in("Email address", with: email)
        click_on("Create an account")
    end
end

Given("fill out the form using {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |title, first_name, last_name, password, address, city, state, postcode, phone_mobile|
    choose(title)
    fill_in("customer_firstname", with: first_name)
    fill_in("customer_lastname", with: last_name)
    fill_in("passwd", with: password)
    fill_in("firstname", with: first_name)
    fill_in("lastname", with: last_name)
    fill_in("address1", with: address)
    fill_in("city", with: city)
    select(state, from: "State ", visible: false)
    fill_in("postcode", with: postcode)
    fill_in("phone_mobile", with: phone_mobile)
end

When("the form is submitted") do
    click_on("submitAccount")
end

Then("should be signed in as {string}") do |full_name|
    page.save_screenshot('evidence.png')
    expect(find("a.account").text).to match("#{full_name}")
end