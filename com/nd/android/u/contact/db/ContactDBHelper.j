.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/ContactDBHelper
.super android/database/sqlite/SQLiteOpenHelper
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SdCardPath" 
.end annotation

.field private static 'ASSETS_NAME' Ljava/lang/String;

.field public static 'DB_NAME' Ljava/lang/String;

.field private static final 'DB_VERSION' I = 6


.field private 'DB_PATH' Ljava/lang/String;

.field private final 'mContext' Landroid/content/Context;

.field public 'myDataBase' Landroid/database/sqlite/SQLiteDatabase;

.method static <clinit>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getModleDBName(Ljava/lang/String;)Ljava/lang/String;
putstatic com/nd/android/u/contact/db/ContactDBHelper/ASSETS_NAME Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
getstatic com/nd/android/u/contact/db/ContactDBHelper/DB_NAME Ljava/lang/String;
bipush 6
invokespecial com/nd/android/u/contact/db/ContactDBHelper/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
aload 2
bipush 6
invokespecial com/nd/android/u/contact/db/ContactDBHelper/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
aconst_null
iload 3
invokespecial com/nd/android/u/contact/db/ContactDBHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
aload 1
aload 2
aconst_null
iload 4
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/data/data/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/databases/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/db/ContactDBHelper/DB_PATH Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/db/ContactDBHelper/myDataBase Landroid/database/sqlite/SQLiteDatabase;
aload 0
aload 1
putfield com/nd/android/u/contact/db/ContactDBHelper/mContext Landroid/content/Context;
aload 2
putstatic com/nd/android/u/contact/db/ContactDBHelper/DB_NAME Ljava/lang/String;
return
.limit locals 5
.limit stack 5
.end method

.method private copyDataBase()V
.throws java/io/IOException
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/mContext Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
getstatic com/nd/android/u/contact/db/ContactDBHelper/ASSETS_NAME Ljava/lang/String;
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 2
new java/io/FileOutputStream
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/DB_PATH Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/contact/db/ContactDBHelper/DB_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/FileOutputStream/<init>(Ljava/lang/String;)V
astore 3
sipush 1024
newarray byte
astore 4
L0:
aload 2
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 1
iload 1
ifle L1
aload 3
aload 4
iconst_0
iload 1
invokevirtual java/io/OutputStream/write([BII)V
goto L0
L1:
aload 3
invokevirtual java/io/OutputStream/flush()V
aload 3
invokevirtual java/io/OutputStream/close()V
aload 2
invokevirtual java/io/InputStream/close()V
return
.limit locals 5
.limit stack 4
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_userInfoandunit"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_friendgroup"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_group"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_grouprelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_userInfoandunit"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_depart"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_user"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_friendrelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_class"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_classrelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_header"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_unitrelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_app"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_app_type"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_appupdatetime"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_smsquerydetail"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_ability"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_visitor"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_blacklist"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_find_senior"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private hasModleDB()Z
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/DB_PATH Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/contact/db/ContactDBHelper/ASSETS_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public checkDataBase()Z
.catch android/database/sqlite/SQLiteException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/DB_PATH Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/contact/db/ContactDBHelper/DB_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/DB_PATH Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/contact/db/ContactDBHelper/DB_NAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L1
aload 0
aload 1
aconst_null
iconst_1
invokestatic android/database/sqlite/SQLiteDatabase/openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/android/u/contact/db/ContactDBHelper/myDataBase Landroid/database/sqlite/SQLiteDatabase;
L1:
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/myDataBase Landroid/database/sqlite/SQLiteDatabase;
ifnull L3
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/myDataBase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L3:
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/myDataBase Landroid/database/sqlite/SQLiteDatabase;
ifnull L4
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual android/database/sqlite/SQLiteException/printStackTrace()V
goto L1
L4:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public close()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial android/database/sqlite/SQLiteOpenHelper/close()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public createDataBase()V
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/checkDataBase()Z
ifne L1
aload 0
invokespecial com/nd/android/u/contact/db/ContactDBHelper/hasModleDB()Z
ifeq L1
L0:
getstatic com/nd/android/u/contact/db/ContactDBHelper/ASSETS_NAME Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
invokespecial com/nd/android/u/contact/db/ContactDBHelper/copyDataBase()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-isContactDBInit"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
L1:
return
L2:
astore 1
new java/lang/Error
dup
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/copy_db_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial java/lang/Error/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/nd/android/u/contact/db/ContactDBHelper/myDataBase Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "create table uu_userInfoandunit (_id integer primary key autoincrement, uid BIGINT not null ,username text ,type integer, workid text, studentid text, duty text, mobilephone text, email text, unitid integer, unitname text,unitshortname text,unitcode text,unittype integer, deporcassid integer, isadmin integer, uap_uid integer ,nickname text ,joindate text ,telephone text ,signature text ,updatetime BIGINT ,friend_updatetime BIGINT ,isactive integer ,sysavatar integer ,gender text ,birthday text ,blood text ,site text ,description text ,fax text ,addr text ,postcode text ,isgetextinfo integer ,isgetall integer ,receivegroupmsg integer ,unit_updatetime BIGINT ,level integer, isleaf integer, parentId integer, usercount integer, seq integer)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_friendgroup (_id integer, fgid integer not null ,name text , constraint pk_t3 primary key (fgid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_group (_id integer , gid integer not null ,groupname text, imageUrl text, introduction text, avatar integer, updatetime text, joinerm integer, type integer, catagory integer, spell1 text ,spell2 text ,creatorid integer, notice text ,falg integer,  constraint pk_t3 primary key (gid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_grouprelation (_id integer, fid integer not null ,gid integer not null ,updatetime integer ,nickname text ,grade integer ,sex integer , constraint pk_t3 primary key (fid,gid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_depart (_id integer , deptid integer  ,unitid integer  ,parentid integer ,deptname text, shortname text, manager_uid integer, manager_username text, seq integer, allow_group integer, usercount  integer, nodeusercount integer, gid integer, updatetime text , constraint pk_t3 primary key (deptid,unitid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_user (_id integer, fid integer  ,unitid integer  ,uap_uid integer , username text, nickname text, signature text, updatetime text, joindate text, gender integer, telephone text, mobilehone text, email text, note text, depts text, workid text, type integer, duty text, isactive integer, sysavatar integer, unitname text, birthday text, site text, description text, fax text, studentid text, addr text, usercount integer, postcode text , spell1 text , spell2 text , contact_open integer, province text , city text ,  constraint pk_t3 primary key (fid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_friendrelation (_id integer, fgid integer ,note text ,fid integer,  constraint pk_t3 primary key (fid,fgid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_class (_id integer, classid integer  ,classname text ,shortname text ,gradeid integer ,typeid integer ,unitid integer, gid integer ,gid1 integer ,usercount integer, manager1 integer, manager2 integer, updatetime integer ,updatetime2 integer , constraint pk_t3 primary key (classid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_classrelation (_id integer , classid integer ,type integer ,studentid text,student_name text,courseid integer ,course_name text ,fid integer , constraint pk_t3 primary key (fid, classid,studentid,type ,courseid ))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_header (_id integer  , uid long primary key,url text, updatetime long, showupdatetime long )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_unitrelation (_id integer , unitid integer ,deptid integer ,updatetime integer ,fid integer , constraint pk_t3 primary key (fid,deptid,unitid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_app (_id integer , appid integer ,code text ,name text ,menutype text ,url text ,bussurl text ,packet_name text ,product_code text ,target text ,display integer ,ver integer ,vername text ,downurl text ,md5 text ,notes text ,updatetime integer , constraint pk_t3 primary key (appid ,code ))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_app_type (typecode text ,typename text )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_appupdatetime (appid integer ,code text ,updatetime integer , constraint pk_t3 primary key (appid ,code ))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_ability (_id integer primary key autoincrement, uid  BIGINT not null ,tigid integer,tagname text )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_birthdaymind (fid integer not null ,usertype integer, username text, workid text, birthday text, mind integer default 0,primary key(fid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_birthdaymindhistory (_id integer primary key autoincrement, fid integer not null ,usertype integer, username text, workid text, birthday text, description text)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS uu_blacklist (myoapid INTEGER NOT NULL, uid INTEGER NOT NULL, PRIMARY KEY (myoapid , uid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_jmclass (_id integer, classid integer  ,classname text ,shortname text ,gid integer ,usercount integer, manager1 integer, manager2 integer, orgver integer , classver integer,  constraint pk_t3 primary key (classid))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_jmclassrelation (_id integer , classid integer ,userver integer ,fid integer , constraint pk_t3 primary key (fid, classid  ))"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_version (_id integer primary key autoincrement, orgver integer,classver integer, userver integer )"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_grouprelation_INDEX1 ON uu_grouprelation(gid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_depart_INDEX1 ON uu_depart(unitid,deptid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_user_INDEX1 ON uu_user(fid,unitid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_user_INDEX2 ON uu_user(fid,username)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_friendrelation_INDEX1 ON uu_friendrelation(fid,fgid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_classrelation_INDEX1 ON uu_classrelation(fid,classid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_header_INDEX1 ON uu_header(uid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_unitrelation_INDEX1 ON uu_unitrelation(fid,unitid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_appupdatetime_INDEX1 ON uu_appupdatetime(code)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_unitrelation_INDEX2 ON uu_unitrelation(deptid,unitid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE INDEX uu_classrelation_INDEX2 ON uu_classrelation(type,classid)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/contact/db/table/PassportPhotoTable/CREATE_TABLE Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table uu_newfans (_id integer primary key autoincrement, fid  integer,time BIGINT not null)"
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/contact/db/table/MySeniorTable/CREATE_TABLE Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/contact/db/table/FindSeniorTable/CREATE_TABLE Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial android/database/sqlite/SQLiteOpenHelper/onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
iload 2
ifle L0
iload 2
tableswitch 1
L1
L2
L3
L4
L5
default : L6
L6:
return
L1:
aload 1
ldc "uu_ability"
ldc "uid"
invokestatic com/common/android/utils/db/SqlStringHelper/isExistColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
ifne L2
aload 1
ldc "uu_ability"
ldc "uid"
ldc "LONG"
invokestatic com/common/android/utils/db/SqlStringHelper/getAlterColumnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L2:
aload 1
ldc "DROP TABLE IF EXISTS uu_visitor"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DROP TABLE IF EXISTS uu_smsquerydetail"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L3:
aload 1
ldc "ALTER TABLE uu_group ADD COLUMN catagory integer"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "ALTER TABLE uu_group ADD COLUMN spell1 text"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "ALTER TABLE uu_group ADD COLUMN spell2 text"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L4:
aload 1
ldc "create table uu_newfans (_id integer primary key autoincrement, fid  integer,time BIGINT not null)"
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L5:
aload 1
getstatic com/nd/android/u/contact/db/table/MySeniorTable/CREATE_TABLE Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
getstatic com/nd/android/u/contact/db/table/FindSeniorTable/CREATE_TABLE Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
L0:
aload 0
aload 1
invokespecial com/nd/android/u/contact/db/ContactDBHelper/dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 4
.limit stack 4
.end method
