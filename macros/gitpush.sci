function [res1,res2,res3] = gitpush()
    // $ git add .
    // $ git commit -am "make it better"
    // $ git push heroku master
    cd(SCIHOME+'\datadeploy')
    res1 = unix_g('git add .')
    res2 = unix_g('git commit -am ""new data""')
    res3 = unix_g('git push heroku master')
endfunction
