function datadeploy(header,data,herokuapp)
    // header: header of the variable to deploy
    // data: core of the data to deploy
    // herokuapp: name of heroku app to deploy (contained in the URL)

    // M = ['A','B';
    //     '1','2';
    //     '3','4']
    //
    // header = M(1,:)
    // data = M(2:$,:)

    if size(header)(2)==size(data)(2)
        // check that header and data have the same number of columns
        if ~isdir(SCIHOME+'\datadeploy\')
            gitinit(herokuapp)
        end
        cd(SCIHOME+'\datadeploy')
        csvWrite([header;data],"data.csv")
        herokupython()
        gitpush()
        unix('heroku open -a '+herokuapp)
        disp("API deployed on: "+herokuapp+".herokuapp.com\")
    end

endfunction
