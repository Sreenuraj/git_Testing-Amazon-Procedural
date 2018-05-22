*** Settings ***
Documentation    This will test the amazon site for adding a product
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
#Suite Setup  Common.Lets run this at the beigning of the suite
#Test Setup  Common.Open browser and maximise
#Test Teardown  Common.Close the browser
#Suite Teardown  Common.Lets run at the end of the suite
Suite Setup  Common.Open browser and maximise
Suite Teardown  Common.Close the browser


*** Variables ***
${URL} =  https://www.amazon.in/
${BROWSER} =  chrome
${SEARCH_TERM} =  alexa


*** Test Cases ***
User search for a product
    [tags]  smoke
    Amazon.Go to the url
    Amazon.Search for a product

User add product to cart
    #Amazon.Go to the url
    #Amazon.Search for a product
    Amazon.Add product to cart

User must sign in to do checkout
    #Amazon.Go to the url
    #Amazon.Search for a product
    #Amazon.Add product to cart
    Amazon.Proceed to checkout
    Amazon.Verify the Sign in screen



