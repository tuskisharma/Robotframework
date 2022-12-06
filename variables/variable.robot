*** Variables ***
${url} =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =    chrome
${name} =    Admin
${pwd} =    admin123
${search} =    xpath =    //*[@class='gLFyf']
${movies} =    latest english movies
${button} =    //*[@class='gNO89b']
${username} =    //*[@name='username']
${password} =    //*[@name='password']
${submit} =     //*[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']
${timelink} =    //*[@href='/web/index.php/time/viewTimeModule']
${reclink} =    //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
${test} =    xpath =    //div[text()='Network Administrator']
${job_dropdown} =    xpath =    (//div[@class='oxd-select-text-input'])[1]
${rec_search} =    xpath =    (//button[contains(@class,'oxd-button oxd-button--medium')])[2]