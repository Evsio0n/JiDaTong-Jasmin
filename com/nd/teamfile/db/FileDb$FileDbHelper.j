.bytecode 50.0
.class synchronized com/nd/teamfile/db/FileDb$FileDbHelper
.super android/database/sqlite/SQLiteOpenHelper
.inner class FileDbHelper inner com/nd/teamfile/db/FileDb$FileDbHelper outer com/nd/teamfile/db/FileDb

.field private static final 'DATABASE_NAME' Ljava/lang/String; = "fileinfo.db3"

.field static final 'FILE_INFO' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS file(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, file_id TEXT,file_name TEXT,group_id INTEGER,size INTEGER,creater_uid INTEGER,creater_user_name TEXT,create_time INTEGER,state INTEGER,md5 TEXT,sha1 TEXT,filepath TEXT,local_cache_path TEXT);"

.field public static final 'FILE_INFO_TABLE' Ljava/lang/String; = "file"

.field static final 'USER' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user(id INTEGER PRIMARY KEY NOT NULL, name TEXT NOT NULL);"

.field public static final 'USER_INFO_TABLE' Ljava/lang/String; = "user"

.field private static final 'VERSION' I = 2


.field final synthetic 'this$0' Lcom/nd/teamfile/db/FileDb;

.method public <init>(Lcom/nd/teamfile/db/FileDb;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/teamfile/db/FileDb$FileDbHelper/this$0 Lcom/nd/teamfile/db/FileDb;
aload 0
aload 2
ldc "fileinfo.db3"
aconst_null
iconst_2
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 3
.limit stack 5
.end method

.method private createDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS file(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, file_id TEXT,file_name TEXT,group_id INTEGER,size INTEGER,creater_uid INTEGER,creater_user_name TEXT,create_time INTEGER,state INTEGER,md5 TEXT,sha1 TEXT,filepath TEXT,local_cache_path TEXT);"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "CREATE TABLE IF NOT EXISTS user(id INTEGER PRIMARY KEY NOT NULL, name TEXT NOT NULL);"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial com/nd/teamfile/db/FileDb$FileDbHelper/createDb(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
iload 2
tableswitch 1
L0
default : L1
L1:
return
L0:
ldc "debug"
ldc "upgrade"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ldc "alter table file add filepath text null "
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method
