require_relative './spec_helper'

Capybara.app_host = 'http://www.heureka.cz'

# js: true -> bude se provadet i JavaScript. Idealni na testovani AJAXu
# describe "my test", js: true do

describe "my test" do
  it 'visits heureka' do
    visit '/'
    # otestujeme titulek stranky
    expect(page).to have_title "Heureka.cz"

    # najdeme vyhledavaci policko
    expect(page).to have_css '#input-text'

    # vyplnime text
    fill_in 'input-text', with: "test"


    # odesleme formular
    click_button "Hledej"

    # kontrola ze se nacetla vyhledavaci stranka
    save_and_open_page

    # zkontrolujeme, ze se vyhledava
    expect(page).to have_content('Vyhledávání Test')
  end
end
