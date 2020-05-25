function subdemolist = demo_gateway()
    demopath = get_absolute_file_path("datadeploy.dem.gateway.sce");

    subdemolist = ["Welcome Demo", "welcome.dem.sce";
                    "United Nations", "united_nations.dem.sce"];

    subdemolist(:,2) = demopath + subdemolist(:,2);

endfunction

subdemolist = demo_gateway();
clear demo_gateway; // remove demo_gateway on stack
