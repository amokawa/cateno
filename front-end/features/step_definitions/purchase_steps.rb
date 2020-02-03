require 'pry'

Given("a regular customer signs into the homepage using {string} and {string}") do |email, password|
    visit("http://automationpractice.com/index.php?controller=authentication&back=my-account")
    within("#login_form") do
        fill_in("Email address", with: email)
        fill_in("Password", with: password)
        click_on("Sign in")
    end
end

Given("the {string} category is selected in the navigation bar") do |string|
    within("#block_top_menu") do
        click_on(string)
    end
end

Given("the first product is clicked to show its details") do
    all("#center_column > ul > li").first.click
end

Given("the product is added to the cart") do
    click_on("Add to cart")
end

Given("proceeds to the cart page") do
    find("#layer_cart > div.clearfix > div > div.button-container > a > span").click
end

Given("proceeds to the checkout") do
    click_on("Proceed to checkout")
end

Given("the delivery address and billing address are confirmed") do
    click_on("Proceed to checkout")
end

Given("the shipping method is selected and the terms of service checked") do
    find("#form > div > p.checkbox > div > span").click
    click_on("Proceed to checkout")
end

Given("the banking wire is selected as payment method") do
    find("a.bankwire").click
end

When("the {string} button is clicked") do |string|
    element = find("#cart_navigation > button")
    element.click if element.text == "I confirm my order"
end

Then("the ORDER CONFIRMATION page is loaded with the message {string}") do |string|
    page.save_screenshot('evidence2.png')
    expect(find("#center_column > div > p").text).to match(string)
end