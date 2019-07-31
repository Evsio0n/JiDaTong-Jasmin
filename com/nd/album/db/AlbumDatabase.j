.bytecode 50.0
.class public synchronized com/nd/album/db/AlbumDatabase
.super java/lang/Object
.inner class private static DatabaseHelper inner com/nd/album/db/AlbumDatabase$DatabaseHelper outer com/nd/album/db/AlbumDatabase

.field private static final 'DATABASE_NAME' Ljava/lang/String; = "91album"

.field private static final 'DATABASE_VERSION' I = 3


.field private static 'instance' Lcom/nd/album/db/AlbumDatabase;

.field private 'mOpenHelper' Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;

.method static <clinit>()V
aconst_null
putstatic com/nd/album/db/AlbumDatabase/instance Lcom/nd/album/db/AlbumDatabase;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
aload 0
new com/nd/album/db/AlbumDatabase$DatabaseHelper
dup
aload 1
invokespecial com/nd/album/db/AlbumDatabase$DatabaseHelper/<init>(Landroid/content/Context;)V
putfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
return
.limit locals 2
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/album/db/AlbumDatabase;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/album/db/AlbumDatabase/instance Lcom/nd/album/db/AlbumDatabase;
ifnonnull L3
ldc com/nd/album/db/AlbumDatabase
monitorenter
L0:
getstatic com/nd/album/db/AlbumDatabase/instance Lcom/nd/album/db/AlbumDatabase;
ifnonnull L1
new com/nd/album/db/AlbumDatabase
dup
aload 0
invokespecial com/nd/album/db/AlbumDatabase/<init>(Landroid/content/Context;)V
putstatic com/nd/album/db/AlbumDatabase/instance Lcom/nd/album/db/AlbumDatabase;
L1:
ldc com/nd/album/db/AlbumDatabase
monitorexit
L3:
getstatic com/nd/album/db/AlbumDatabase/instance Lcom/nd/album/db/AlbumDatabase;
areturn
L2:
astore 0
L4:
ldc com/nd/album/db/AlbumDatabase
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method public close()V
aload 0
getfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
ifnull L0
aload 0
getfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
invokevirtual com/nd/album/db/AlbumDatabase$DatabaseHelper/close()V
aload 0
aconst_null
putfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
iload 1
ifeq L0
aload 0
getfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
invokevirtual com/nd/album/db/AlbumDatabase$DatabaseHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
areturn
L0:
aload 0
getfield com/nd/album/db/AlbumDatabase/mOpenHelper Lcom/nd/album/db/AlbumDatabase$DatabaseHelper;
invokevirtual com/nd/album/db/AlbumDatabase$DatabaseHelper/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 2
.limit stack 1
.end method
