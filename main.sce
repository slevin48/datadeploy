// First time use
M = ['A','B';
    '1','2';
    '3','4']

header = M(1,:)
data = M(2:$,:)
herokuapp='datadeploy48';

// datadeploy(header,data,herokuapp)

//Full workflow
gitinit(herokuapp)
cd(SCIHOME)
// gitclone()
cd('datadeploy')
csvWrite([header;data],"data.csv")
// gitpull()
herokupython()
gitpush()
