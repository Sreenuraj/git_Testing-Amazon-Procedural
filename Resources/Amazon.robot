*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/TopNavBar.robot
Resource  ../Resources/PageObjects/SearchResult.robot
Resource  ../Resources/PageObjects/ProductActions.robot
Resource  ../Resources/PageObjects/CartActions.robot
Resource  ../Resources/PageObjects/SignInPage.robot

*** Keywords ***

Go to the url
    LandingPage.Load
    LandingPage.Verify Page Load

Search for a product
    TopNavBar.Searching The Product
    SearchResult.Click Product Link
    ProductActions.Verify Page Loaded

Add product to cart
    ProductActions.Add Product To Cart
    CartActions.Verify Product Added

Proceed to checkout
    CartActions.Proceed To Checkout

Verify the Sign in screen
    SignInPage.Verify Page Loaded
