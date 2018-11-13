*** Settings ***
Suite Setup       Go to homepage    # opens homepage in chrome
Suite Teardown
Library           Selenium2Library
Library           Collections
Library           xlrd
Library           xlwt

*** Variables ***
${URL}            https://mybookie.ag
${Browser}        chrome

*** Test Cases ***
Homepage
    Selenium2Library.Set Screenshot Directory    Sliders1
    Selenium2Library.Capture Page Screenshot    filename=s1.png
    sleep    5
    Selenium2Library.Capture Page Screenshot    filename=s2.png
    sleep    6
    Selenium2Library.Capture Page Screenshot    filename=s3.png
    sleep    5
    Selenium2Library.Capture Page Screenshot    filename=s4.png
    sleep    5.5
    Selenium2Library.Capture Page Screenshot    filename=s5.png
    sleep    5
    Selenium2Library.Capture Page Screenshot    filename=s6.png

Submenu
    Scroll Page to Location    0    750
    Selenium2Library.Set Selenium Implicit Wait    3
    Selenium2Library.Click Image    xpath=//img[contains(@alt, 'MyBookie 50% Sign-Up Bonus')]
    Selenium2Library.Set Selenium Implicit Wait    1
    Selenium2Library.Click Image    xpath=//img[contains(@alt,'Squares Contest')]
    Selenium2Library.Set Selenium Implicit Wait    1
    Selenium2Library.Click Image    xpath=//img[contains(@alt,'100% Referral Bonuses')]
    Selenium2Library.Click Image    //img[contains(@alt,'75% Sports Reload')]

Sportsbook
    Selenium2Library.Click Element    //*[@id="menu-item-204"]/a
    Selenium2Library.Capture Page Screenshot    filename=sports.png

Casino
    Selenium2Library.Set Selenium Implicit Wait    2
    Selenium2Library.Click Element    //*[@id="menu-item-202"]/a
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_0_1051
    Scroll Bonus    0    350
    sleep    7
    Selenium2Library.Capture Page Screenshot    filename=Multihand.png
    Selenium2Library.Set Selenium Implicit Wait    1
    Selenium2Library.Click Element    //*[@id="closeIframeGame"]/span
    Selenium2Library.Set Selenium Implicit Wait    1
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_6_793
    Scroll Bonus    0    350
    sleep    7
    Selenium2Library.Capture Page Screenshot    filename=Ogre.png

LiveCasino
    Selenium2Library.Set Selenium Implicit Wait    2
    Selenium2Library.Click Element    (//a[@class='categoryNameTab'])[2]
    Selenium2Library.Click Element    //a[@class='btn btn-success btn-xtra']
    sleep    1
    Selenium2Library.Go Back
    Scroll Bonus    0    550
    Selenium2Library.Click Image    (//img[@class='img-responsive'])[1]
    sleep    1
    Selenium2Library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2Library.Click Image    (//img[@class='img-responsive'])[2]
    sleep    1
    Selenium2Library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2Library.Click Image    (//img[@class='img-responsive'])[3]
    sleep    1
    Selenium2Library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2Library.Click Image    (//img[@class='img-responsive'])[4]
    sleep    1
    Selenium2Library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2Library.Click Image    (//img[@class='img-responsive'])[5]
    sleep    1
    Selenium2Library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2Library.Click Image    (//img[@class='img-responsive'])[6]
    sleep    1
    Selenium2Library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    Selenium2Library.Title Should Be    Live Casino Online Real Money Live Casino Website | MyBookie Online Casino Live
    Selenium2Library.Go Back

Tablegames
    Selenium2Library.Set Selenium Implicit Wait    1
    Selenium2Library.Click Element    (//a[@class='categoryNameTab'])[3]
    Scroll Bonus    0    200
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_4_1045
    Scroll Bonus    0    350
    sleep    5
    Selenium2Library.Capture Page Screenshot    filename=Roulette.png
    Selenium2Library.Click Element    //*[@id="closeIframeGame"]/span
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_7_30241
    sleep    5
    Scroll Bonus    0    350
    Selenium2Library.Capture Page Screenshot    filename=Pai.png
    Selenium2Library.Click Element    //*[@id="closeIframeGame"]/span

3DSlots
    sleep    1
    Selenium2Library.Click Element    (//a[@class='categoryNameTab'])[4]
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_0_784
    Scroll Bonus    0    350
    sleep    7
    Selenium2Library.Capture Page Screenshot    filename=sugarpop2.png
    Selenium2Library.Click Element    //*[@id="closeIframeGame"]/span
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_2_794
    Scroll Bonus    0    350
    sleep    7
    Selenium2Library.Capture Page Screenshot    filename=GoldenOwl.png
    Selenium2Library.Click Element    //*[@id="closeIframeGame"]/span

Slots
    Selenium2Library.Set Selenium Implicit Wait    2
    Selenium2Library.Click Element    (//a[@class='categoryNameTab'])[5]
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_0_763
    Scroll Bonus    0    350
    sleep    7
    Selenium2Library.Capture Page Screenshot    filename=bloodeternal.png
    Selenium2Library.Click Element    //*[@id="closeIframeGame"]

VideoPoker
    Selenium2Library.Set Selenium Implicit Wait    2
    Selenium2Library.Click Element    (//a[@class='categoryNameTab'])[6]
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_0_30267
    Scroll Bonus    0    350
    sleep    5
    Selenium2Library.Capture Page Screenshot    filename=bloodeternal.png
    sleep    1

OtherGames
    Selenium2Library.Set Selenium Implicit Wait    2
    Selenium2Library.Click Element    (//a[@class='categoryNameTab'])[7]
    Selenium2Library.Click Element    id=casino_game_play_fun_trk_0_1043
    Scroll Bonus    0    400
    sleep    5
    Selenium2Library.Capture Page Screenshot    filename=Kenol.png
    sleep    3

Racing
    Selenium2library.Click Element    //*[@id="menu-item-8953"]/a
    Selenium2Library.Title Should Be    Racing, Bet Off Track Odds, Horse Race Betting Lines | MyBookie Online Racebook

Deposit
    Selenium2library.Click Element    //*[@id="menu-item-87917"]/a
    Selenium2library.Click Element    //*[@id="banking_trk2"]
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    id=banking_trk7
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    //*[@id="banking_trk3"]
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    id=banking_trk6
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    id=banking_trk1
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    id=banking_trk8
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    Selenium2Library.Title Should Be    Banking & Deposit Options | MyBookie Online Sportsbook & Casino

Refer
    sleep    2
    Selenium2library.Click Element    //*[@id="menu-item-90936"]/a
    Selenium2library.Click Element    id=refer_friends_sigin_trk
    sleep    2
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    2
    Selenium2library.Click Element    //*[@id="refer_friends_join_trk"]
    Selenium2Library.Go Back
    Selenium2Library.Title Should Be    Refer a Friend | Bonuses | MyBookie Online Sportsbook

Bonuses
    Selenium2library.Click Element    //*[@id="menu-item-24123"]/a
    Selenium2library.Click Element    (//img[@class='img-responsive'])[1]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[3]
    Selenium2library.Click Element    (//img[@class='img-responsive'])[5]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[5]

Customer Bonuses
    Selenium2Library.Set Selenium Implicit Wait    1
    Scroll Bonus    0    500
    sleep    3
    Selenium2library.Click Element    (//img[@class='img-responsive'])[7]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[9]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[11]
    sleep    3
    Selenium2library.Click Element    (//img[@class='img-responsive'])[11]

Casino Bonuses
    sleep    3
    Scroll Bonus    0    600
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[13]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[15]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[17]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[17]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[19]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[21]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[23]
    sleep    3
    Selenium2library.Click Element    (//img[@class='img-responsive'])[23]

Additional Bonuses
    sleep    1
    Scroll Bonus    0    850
    Selenium2library.Click Element    (//img[@class='img-responsive'])[25]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[27]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[29]
    sleep    2
    Selenium2library.Click Element    (//img[@class='img-responsive'])[29]
    sleep    3
    Selenium2library.Click Element    (//img[@class='img-responsive'])[31]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[33]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[35]
    sleep    2
    Selenium2library.Click Element    (//img[@class='img-responsive'])[35]
    sleep    3
    Selenium2library.Click Element    (//img[@class='img-responsive'])[37]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[39]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[41]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[41]
    sleep    3
    Selenium2library.Click Element    (//img[@class='img-responsive'])[43]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[45]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[47]
    sleep    1
    Selenium2library.Click Element    (//img[@class='img-responsive'])[47]
    Selenium2Library.Title Should Be    Bonuses, Sportsbook Promotions & Bonus Codes | MyBookie Sportsbook Bonuses

Contests
    Selenium2Library.Set Selenium Implicit Wait    2
    Selenium2library.Click Element    xpath=//*[@id="menu-item-90935"]/a
    Scroll Page to Location    0    350
    Selenium2library.Click Element    //a[contains(text(),'Terms and Conditions')]
    sleep    1
    Selenium2library.Click Element    //*[@id="myModal1child"]/div/div[1]/button
    sleep    1
    Selenium2library.Click Element    id=squares-join
    sleep    1
    Selenium2library.Click Element    //*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    //a[@class="btn-lg btn-success myb-contest__button-join hidden-sm hidden-xs"]
    Selenium2Library.Go Back
    Selenium2library.Click Element    //*[@id="post-61063"]/div/div/div/div[2]/div/div[2]/div/div/div[2]/div[1]/p/a
    sleep    1
    Selenium2library.Click Element    //*[@id="myModalchild"]/div/div/div[1]/button
    sleep    1
    Selenium2library.Click Element    xpath=//*[@id="Survivor-signin"]
    sleep    1
    Selenium2library.Click Element    xpath=//*[@id="login-modal"]/div/div/div[1]/button/span
    sleep    1
    Selenium2library.Click Element    id=survivor-join
    Selenium2Library.Go Back
    Selenium2Library.Title Should Be    Betting Games & Members Contests, Win Cash & Prizes | Mybookie Sportsbook
    Sleep    2
    Close All Browsers

*** Keywords ***
Scroll Page to Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})

Go to Homepage
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

wait
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}    10
    Click Image    ${element}

Scroll Bonus
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
