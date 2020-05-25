function demo_united_nations()
    // header: header of the variable to deploy
    // data: core of the data to deploy
    // herokuapp: name of heroku app to deploy (contained in the URL)

    function [header, data] = importdata(filename)
        header = mgetl(filename, 1);
        header = csvTextScan(header, ",", ".", "string");
        data = csvRead(filename, ",", ".", "string", [], [], [], 1);
    endfunction

    [header, data] = importdata(datadeploy_getpath()+"\data\data_UN.csv");

    herokuapp=x_dialog('Name of the herokuapp to deploy','datadeploy48')

    datadeploy(header,data,herokuapp)

    data_UN = http_get('https://'+herokuapp+'.herokuapp.com/')

    disp('GET https://'+herokuapp+'.herokuapp.com/')
    disp('data_UN :')
    disp(data_UN)

endfunction

demo_united_nations();
clear demo_united_nations;
