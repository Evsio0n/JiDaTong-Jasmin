.bytecode 50.0
.class public synchronized com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats
.super java/lang/Object
.inner class public static DbStats inner com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats outer com/nd/rj/common/encryptsqlite/SQLiteDebug

.field public 'dbName' Ljava/lang/String;

.field public 'dbSize' J

.field public 'lookaside' I

.field public 'pageSize' J

.method public <init>(Ljava/lang/String;JJI)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats/dbName Ljava/lang/String;
aload 0
lload 4
putfield com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats/pageSize J
aload 0
lload 2
lload 4
lmul
ldc2_w 1024L
ldiv
putfield com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats/dbSize J
aload 0
iload 6
putfield com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats/lookaside I
return
.limit locals 7
.limit stack 5
.end method
