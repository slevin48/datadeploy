function herokupython()
    // Create a app.py file to start the heroku app
    // Done only once
    copyfile(datadeploy_getpath()+"\heroku\Procfile",SCIHOME+'\datadeploy\')
    copyfile(datadeploy_getpath()+"\heroku\datadeploy.py",SCIHOME+'\datadeploy\')
    copyfile(datadeploy_getpath()+"\heroku\requirements.txt",SCIHOME+'\datadeploy\')
endfunction
