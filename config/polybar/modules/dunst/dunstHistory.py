import os
import re
text = os.popen('echo "$(dunstctl history)"')
text = str(text.read())
text=text.replace('\t', ' ')
text=re.findall('message.*?category', text, re.DOTALL)
rawNotif=[]
for j in text:
    j=str(j).replace('"category', '')
    rawNotif.append(j)
dunst=[]
appNames=[]
for k in rawNotif:
    k=k.replace(re.search('"summary".*?},', k, re.DOTALL).group(0), '')
    k=k.replace(re.search('"type".*?,', k, re.DOTALL).group(0), '')
    k=k.replace('"data" : ', '').replace('"<b>', '').replace('</b>', ': ').replace('\\n', '\n').replace('\\t', '\t')
    appName=str(re.search('"appname".*?},', k, re.DOTALL).group(0)).replace('appname', '').replace('{', '').replace('}', '')
    appName=appName.replace(' ', '').replace(',', '').replace(':', '').replace('"', '').replace('\n', '')
    count=1
    if appName in appNames:
        for m in appNames:
            if m==appName:
                count+=1
    appNames.append(appName)
    k=k.replace(re.search('"appname".*?},', k, re.DOTALL).group(0), '')
    k=k.replace('  ', '').replace('"', '').replace('{', '').replace('}', '').replace(',', '').replace('&apos;', "'")
    k=k.replace('message :', ('-'*50)+(f'\n{appName} ('+str(count)+'):')).replace('\n\n', '')
    dunst.append(str(k))
for l in dunst:
    print(l)