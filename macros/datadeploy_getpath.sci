function path = datadeploy_getpath()
    path = get_function_path("datadeploy_getpath")
    path = fullpath(fullfile(fileparts(path), ".."))
endfunction
