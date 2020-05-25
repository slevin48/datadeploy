function demo_welcome()
    // header: header of the variable to deploy
    // data: core of the data to deploy
    // herokuapp: name of heroku app to deploy (contained in the URL)

    M = ['A','B';
        '1','2';
        '3','4']

    header = M(1,:)
    data = M(2:$,:)

    herokuapp=x_dialog('Name of the herokuapp to deploy','datadeploy48')

    datadeploy(header,data,herokuapp)

endfunction

demo_welcome();
clear demo_welcome;
