  Before do
    page.driver.browser.manage.window.maximize
  end

  After('@logout')do
  click_link 'Log me out'
end