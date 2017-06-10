import bottle
import gridfs
import pymongo

connection=pymongo.MongoClient('localhost',27017)

@bottle.route('/')
def function():
    return bottle.template('login')

@bottle.post('/login')
def function1():
    uname=bottle.request.forms.get('uname')
    psw=bottle.request.forms.get('psw')
    value=False
    db=connection.testdb
    user=[]
    pasw=[]
    for each in db.user.find():
        user.append(each['user'])
        pasw.append(each['pass'])
    i=0
    while(i<len(user)):
        if(user[i]==uname and pasw[i]==psw):
            value=True
            break
        else:
            value=False
        i=i+1
    if(value==True):
        return bottle.template('successful')
    else:
        return "<p><b>Login failed</b></p><br><a href=logout>Go Back..</a></br>"

@bottle.post('/signup')
def signup():
    uname=bottle.request.forms.get('uname')
    psw=bottle.request.forms.get('pwd')
    db=connection.testdb
    db.user.insert({"user":uname,"pass":psw})
    return bottle.template('login')

@bottle.post('/add')
def do_upload():
    headline = bottle.request.forms.get('headline')
    content= bottle.request.forms.get('content')
    file1= bottle.request.files.file
    file1.save("/home/pranay/Pictures/",overwrite=True)
    name=file1.filename
    file="/home/pranay/Pictures/"+name
    db=connection.testdb
    db.news.insert_one({"headline":headline,"content":content,"image":name})
    fs=gridfs.GridFS(db,"images")
    fl=open(file,'r')
    fs.put(fl,filename=name)
    fl.close()
    return bottle.template('home')

@bottle.post('/delete')
def remove():
    count =bottle.request.forms.get('radio')
    headlines=[]
    db=connection.testdb
    for each in db.news.find():
        headlines.append(each['headline'])
    db.news.delete_one({"headline":count})
    return bottle.template('home')

@bottle.route('/show')
def show():
    db=connection.testdb
    headlines=[]
    content=[]
    img=[]
    for each in db.news.find():
        headlines.append(each['headline'])
        content.append(each['content'])
        img.append(each['image'])
    i=len(headlines)
    return bottle.template('show',x=0,i=i,headlines=headlines,content=content,img=img)

@bottle.route('/delete1')
def delete():
    db=connection.testdb
    headlines=[]
    for each in db.news.find():
        headlines.append(each['headline'])
    i=len(headlines)
    return bottle.template('delete',x=0,i=i,headline=headlines)

@bottle.route('/images/<filename>')
def show_image(filename):
    db=connection.testdb
    fs=gridfs.GridFS(db,"images")
    fsout=fs.get_last_version(filename=filename)
    bottle.response.content_type="image/jpeg"
    return fsout
    
@bottle.route('/home.tpl')
def function2():
    return bottle.template('home')

@bottle.route('/signup.tpl')
def function3():
    return bottle.template('signup')

@bottle.route('/add.tpl')
def function4():
    return bottle.template('add')

@bottle.route('/logout')
def function7():
    return bottle.template('login')

bottle.run(host='192.168.43.178',port=8080,debug=True)   
            