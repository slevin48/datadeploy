function [res1,res2] = gitinit(herokuapp)
    // herokuapp = "datadeploy";
    if ~isdir(SCIHOME+'\datadeploy\') & type(herokuapp) == 10 then
        // check if there is already an existing folder 'datadeploy'
        // check that herokuapp contains a string
        cd(SCIHOME)
        mkdir("datadeploy")
        cd("datadeploy")
        res1 = unix_g("git init")
        res2 = unix_g("heroku git:remote -a "+herokuapp)
    else
        res1 = []
        res2 = []
    end
endfunction
