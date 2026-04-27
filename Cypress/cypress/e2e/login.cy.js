describe('Login Test', () => {

  it('should login successfully with valid credentials', () => {
    cy.visit('https://www.saucedemo.com/')

    cy.get('#user-name').type('standard_user')
    cy.get('#password').type('secret_sauce')

    cy.get('#login-button').click()

    cy.url().should('include', '/inventory')
  })

  it('should show error with invalid login', () => {
    cy.visit('https://www.saucedemo.com/')

    cy.get('#user-name').type('wrong_user')
    cy.get('#password').type('wrong_pass')

    cy.get('#login-button').click()

    cy.get('.error-message-container')
      .should('contain', 'Username and password do not match')
  })

})