.bytecode 50.0
.class public synchronized com/nd/rj/common/encryptsqlite/SQLiteDatabase
.super java/lang/Object
.inner class static QueryRetObject inner com/nd/rj/common/encryptsqlite/SQLiteDatabase$QueryRetObject outer com/nd/rj/common/encryptsqlite/SQLiteDatabase

.field public static final 'CONFLICT_ABORT' I = 2


.field public static final 'CONFLICT_FAIL' I = 3


.field public static final 'CONFLICT_IGNORE' I = 4


.field public static final 'CONFLICT_NONE' I = 0


.field public static final 'CONFLICT_REPLACE' I = 5


.field public static final 'CONFLICT_ROLLBACK' I = 1


.field private static final 'CONFLICT_VALUES' [Ljava/lang/String;

.field private static final 'LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS' I = 100


.field private static final 'LOCK_ACQUIRED_WARNING_TIME_IN_MS' I = 300


.field private static final 'LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT' I = 2000


.field private static final 'LOCK_WARNING_WINDOW_IN_MS' I = 20000


.field private static final 'sLimitPattern' Ljava/util/regex/Pattern;

.field private 'TAG' Ljava/lang/String;

.field private final 'mCppSqliteError' I

.field private 'mDbKey' Ljava/lang/String;

.field private 'mLastLockMessageTime' J

.field private final 'mLock' Ljava/util/concurrent/locks/ReentrantLock;

.field private 'mLockAcquiredThreadTime' J

.field private 'mLockAcquiredWallTime' J

.field private 'mLockingEnabled' Z

.field private 'mPath' Ljava/lang/String;

.field private 'mSqlitePos' I

.method static <clinit>()V
bipush 6
anewarray java/lang/String
dup
iconst_0
ldc ""
aastore
dup
iconst_1
ldc " OR ROLLBACK "
aastore
dup
iconst_2
ldc " OR ABORT "
aastore
dup
iconst_3
ldc " OR FAIL "
aastore
dup
iconst_4
ldc " OR IGNORE "
aastore
dup
iconst_5
ldc " OR REPLACE "
aastore
putstatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/CONFLICT_VALUES [Ljava/lang/String;
ldc "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/sLimitPattern Ljava/util/regex/Pattern;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/UnsatisfiedLinkError from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "SQLiteDatabase"
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/TAG Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mDbKey Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 0
iconst_m1
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mCppSqliteError I
aload 0
lconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLastLockMessageTime J
aload 0
ldc "/data/data/com.example.dbutils/databases/"
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mPath Ljava/lang/String;
aload 0
new java/util/concurrent/locks/ReentrantLock
dup
iconst_1
invokespecial java/util/concurrent/locks/ReentrantLock/<init>(Z)V
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLock Ljava/util/concurrent/locks/ReentrantLock;
aload 0
iconst_1
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockingEnabled Z
aload 0
lconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockAcquiredWallTime J
aload 0
lconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockAcquiredThreadTime J
L0:
new com/nd/rj/common/encryptsqlite/OpenRetObject
dup
invokespecial com/nd/rj/common/encryptsqlite/OpenRetObject/<init>()V
astore 3
aload 1
aload 2
aload 3
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/OpenDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
aload 3
getfield com/nd/rj/common/encryptsqlite/OpenRetObject/aRetCode I
ifne L1
aload 0
aload 2
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mDbKey Ljava/lang/String;
aload 0
aload 3
getfield com/nd/rj/common/encryptsqlite/OpenRetObject/aSqlitePos I
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/UnsatisfiedLinkError/printStackTrace()V
return
.limit locals 4
.limit stack 4
.end method

.method private static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method private static appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
aload 1
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmplt L1
aload 0
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
return
L1:
aload 1
iload 2
aaload
astore 4
aload 4
ifnull L2
iload 2
ifle L3
aload 0
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 0
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 2
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
.signature "(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;)V"
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/size()I 0
ifle L0
aload 2
invokeinterface java/util/List/size()I 0
istore 4
aload 0
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iconst_0
istore 3
L1:
iload 3
iload 4
if_icmplt L2
L0:
return
L2:
aload 2
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 1
aload 1
ifnull L3
aload 0
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
iload 4
if_icmpge L3
aload 0
ldc " AND "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
iload 3
iconst_1
iadd
istore 3
goto L1
.limit locals 5
.limit stack 2
.end method

.method private checkLockHoldTime()V
invokestatic android/os/SystemClock/elapsedRealtime()J
lstore 2
lload 2
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockAcquiredWallTime J
lsub
lstore 4
lload 4
ldc2_w 2000L
lcmp
ifge L0
ldc "CppSqliteDatebase"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifne L0
lload 2
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLastLockMessageTime J
lsub
ldc2_w 20000L
lcmp
ifge L0
L1:
return
L0:
lload 4
ldc2_w 300L
lcmp
ifle L1
invokestatic android/os/Debug/threadCpuTimeNanos()J
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockAcquiredThreadTime J
lsub
ldc2_w 1000000L
ldiv
l2i
istore 1
iload 1
bipush 100
if_icmpgt L2
lload 4
ldc2_w 2000L
lcmp
ifle L1
L2:
aload 0
lload 2
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLastLockMessageTime J
new java/lang/StringBuilder
dup
ldc "lock held on "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mPath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "ms. Thread time was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "ms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
getstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_LOCK_TIME_TRACKING_STACK_TRACE Z
ifeq L3
ldc "CppSqliteDatebase"
aload 6
new java/lang/Exception
dup
invokespecial java/lang/Exception/<init>()V
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
L3:
ldc "CppSqliteDatebase"
aload 6
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 7
.limit stack 4
.end method

.method private static filterChar(Ljava/lang/String;)Ljava/lang/String;
aload 0
astore 1
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
astore 1
aload 0
ldc "'"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc "'"
ldc "''"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private getWheres(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;"
aconst_null
astore 5
aload 5
astore 4
aload 1
ifnull L0
aload 5
astore 4
aload 2
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
astore 4
aload 1
ifnull L0
aload 5
astore 4
aload 2
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 2
arraylength
iconst_1
if_icmple L1
aload 1
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
iconst_0
istore 3
L2:
iload 3
aload 1
arraylength
if_icmplt L3
L0:
aload 4
areturn
L3:
aload 4
aload 1
iload 3
aaload
ldc "?"
new java/lang/StringBuilder
dup
ldc "'"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iload 3
aaload
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/filterChar(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L1:
aload 4
aload 1
ldc "?"
new java/lang/StringBuilder
dup
ldc "'"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iconst_0
aaload
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/filterChar(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
areturn
.limit locals 6
.limit stack 6
.end method

.method private toDeleteSql(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 2
aload 3
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/getWheres(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "DELETE FROM "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc " WHERE "
aload 2
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private toInsertSql(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
ldc "INSERT"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
getstatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/CONFLICT_VALUES [Ljava/lang/String;
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc " INTO "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new java/lang/StringBuilder
dup
bipush 40
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 3
ifnull L0
aload 3
invokevirtual android/content/ContentValues/size()I
ifle L0
aload 3
invokevirtual android/content/ContentValues/valueSet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
aload 5
bipush 40
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iconst_0
istore 4
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
aload 5
bipush 41
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L3:
aload 5
ldc " VALUES("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
aload 5
ldc ");"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
iload 4
ifeq L4
aload 5
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
iconst_1
istore 4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 5
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
instanceof java/lang/String
ifeq L5
aload 1
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 1
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L5:
aload 1
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
goto L1
L0:
aload 5
new java/lang/StringBuilder
dup
ldc "("
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc "NULL"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
.limit locals 6
.limit stack 4
.end method

.method private toQureySql(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "HAVING clauses are only permitted when using a groupBy clause"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
getstatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/sLimitPattern Ljava/util/regex/Pattern;
aload 8
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L1
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
ldc "invalid LIMIT clauses:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 3
aload 4
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/getWheres(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "SELECT "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ifnull L2
aload 2
arraylength
ifeq L2
aload 4
aload 2
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
L3:
aload 4
ldc "FROM "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc " WHERE "
aload 3
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
aload 4
ldc " GROUP BY "
aload 5
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc " HAVING "
aload 6
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc " ORDER BY "
aload 7
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc " LIMIT "
aload 8
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
aload 4
ldc "* "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
.limit locals 9
.limit stack 5
.end method

.method private toUpdataSql(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
aload 2
ifnull L0
aload 2
invokevirtual android/content/ContentValues/size()I
ifne L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "Empty values"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 3
aload 4
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/getWheres(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
astore 3
new java/lang/StringBuilder
dup
bipush 120
invokespecial java/lang/StringBuilder/<init>(I)V
astore 4
aload 4
ldc "UPDATE "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
getstatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/CONFLICT_VALUES [Ljava/lang/String;
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc " SET "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual android/content/ContentValues/valueSet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L3
aload 4
ldc " WHERE "
aload 3
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/appendWhere(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 2
aload 4
aload 2
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
instanceof java/lang/String
ifeq L4
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokestatic com/nd/rj/common/encryptsqlite/SQLiteDatabase/filterChar(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L4:
aload 4
aload 2
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
goto L5
.limit locals 6
.limit stack 3
.end method

.method public beginTransaction()I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/BeginTransaction(I)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public checkIsOpen()Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_0
ireturn
L0:
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/isOpen()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public clearResult(I)V
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
return
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/ClearResult(II)V
return
.limit locals 2
.limit stack 2
.end method

.method public close()V
.catch java/lang/UnsatisfiedLinkError from L0 to L1 using L2
.catch java/lang/UnsatisfiedLinkError from L3 to L4 using L2
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L3
L1:
return
L3:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/CloseDB(I)V
aload 0
ldc ""
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mDbKey Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/UnsatisfiedLinkError/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
aload 0
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/toDeleteSql(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)I
ireturn
.limit locals 4
.limit stack 5
.end method

.method public endTransaction(Z)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/CommitTrans(IZ)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public execSQL(Ljava/lang/String;)I
.catch java/lang/UnsatisfiedLinkError from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/UnsatisfiedLinkError from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/lock()V
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
istore 2
L1:
iload 2
ifne L4
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/unlock()V
iconst_m1
ireturn
L4:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/ExecSql(ILjava/lang/String;)I
istore 2
L5:
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/unlock()V
iload 2
ireturn
L2:
astore 1
L6:
aload 1
invokevirtual java/lang/UnsatisfiedLinkError/printStackTrace()V
L7:
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/unlock()V
iconst_m1
ireturn
L3:
astore 1
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/unlock()V
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
aload 2
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "Empty bindArgs"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
invokestatic android/os/SystemClock/uptimeMillis()J
pop2
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/isOpen()Z
ifne L1
new java/lang/IllegalStateException
dup
ldc "database not open"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
astore 4
aload 2
ifnull L2
aload 1
astore 4
aload 2
arraylength
ifle L2
iconst_0
istore 3
L3:
iload 3
aload 2
arraylength
if_icmplt L4
aload 1
astore 4
L2:
aload 0
aload 4
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)I
pop
return
L4:
aload 1
ldc "?"
new java/lang/StringBuilder
dup
ldc "'"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
iload 3
iconst_1
iadd
istore 3
goto L3
.limit locals 5
.limit stack 5
.end method

.method public getBlobByIndex(II)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetBlobByIndex(III)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getBlobByName(Ljava/lang/String;I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetBlobByName(ILjava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getDoubleByIndex(II)D
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc2_w -1.0D
dreturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetDoubleByIndex(III)D
dreturn
.limit locals 3
.limit stack 3
.end method

.method public getDoubleByName(Ljava/lang/String;I)D
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc2_w -1.0D
dreturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetDoubleByName(ILjava/lang/String;I)D
dreturn
.limit locals 3
.limit stack 3
.end method

.method public getFieldDataType(II)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetFieldDataType(III)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getFieldDeclType(II)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetFieldDeclType(III)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getFieldIndex(Ljava/lang/String;I)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetFieldIndex(ILjava/lang/String;I)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getFieldName(II)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetFieldName(III)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getIntByIndex(II)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetIntByIndex(III)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getIntByName(Ljava/lang/String;I)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetIntByName(ILjava/lang/String;I)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getStringByIndex(II)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetStringByIndex(III)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getStringByName(Ljava/lang/String;I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
iload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/GetStringByName(ILjava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getVersion()I
.catch all from L0 to L1 using L2
aload 0
ldc "PRAGMA user_version"
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/querySql(Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnull L3
L0:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L1:
aload 2
ifnull L4
aload 2
invokeinterface android/database/Cursor/close()V 0
L4:
iload 1
ireturn
L2:
astore 3
aload 2
ifnull L5
aload 2
invokeinterface android/database/Cursor/close()V 0
L5:
aload 3
athrow
L3:
aload 2
ifnull L6
aload 2
invokeinterface android/database/Cursor/close()V 0
L6:
iconst_1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
aload 0
aload 1
aload 2
aload 3
iconst_0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
lreturn
.limit locals 4
.limit stack 5
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/isOpen()Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "database not open"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 0
aload 1
aload 2
aload 3
iload 4
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/toInsertSql(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)Ljava/lang/String;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)I
i2l
lreturn
.limit locals 5
.limit stack 6
.end method

.method public isOpen()Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/IsOpen(I)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method lock()V
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockingEnabled Z
ifne L0
return
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLock Ljava/util/concurrent/locks/ReentrantLock;
invokevirtual java/util/concurrent/locks/ReentrantLock/lock()V
return
.limit locals 1
.limit stack 1
.end method

.method public more(I)Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/More(II)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public numFields(I)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
iload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/NumFields(II)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
aload 6
aload 7
aconst_null
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 8
.limit stack 9
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
aload 6
aload 7
aload 8
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/queryWithFactory(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 9
.limit stack 9
.end method

.method public querySql(Ljava/lang/String;)Landroid/database/Cursor;
.catch java/lang/UnsatisfiedLinkError from L0 to L1 using L2
.catch java/lang/UnsatisfiedLinkError from L3 to L4 using L2
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L3
L1:
aconst_null
areturn
L3:
new com/nd/rj/common/encryptsqlite/SQLiteDatabase$QueryRetObject
dup
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase$QueryRetObject/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
aload 2
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/QuerySql(ILjava/lang/String;Ljava/lang/Object;)I
pop
aload 2
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase$QueryRetObject/aRetCode I
ifne L5
new com/nd/rj/common/encryptsqlite/SQLiteCursor
dup
aload 0
aload 2
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase$QueryRetObject/aQueryPos I
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/<init>(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;I)V
astore 1
L4:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/UnsatisfiedLinkError/printStackTrace()V
L5:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method public queryWithFactory(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/isOpen()Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "database not open"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
aload 6
aload 7
aload 8
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/toQureySql(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/querySql(Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 9
.limit stack 10
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
aload 0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/isOpen()Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "database not open"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
astore 4
aload 2
ifnull L1
aload 1
astore 4
aload 2
arraylength
ifle L1
iconst_0
istore 3
L2:
iload 3
aload 2
arraylength
if_icmplt L3
aload 1
astore 4
L1:
aload 0
aload 4
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/querySql(Ljava/lang/String;)Landroid/database/Cursor;
areturn
L3:
aload 1
ldc "?"
new java/lang/StringBuilder
dup
ldc "'"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
iload 3
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
iload 3
iconst_1
iadd
istore 3
goto L2
.limit locals 5
.limit stack 5
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
aload 0
aload 1
aload 2
aload 3
iconst_5
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
lreturn
.limit locals 4
.limit stack 5
.end method

.method public resetKey(Ljava/lang/String;)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mDbKey Ljava/lang/String;
aload 1
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L0
iconst_0
istore 2
L1:
iload 2
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
ifne L2
iconst_m1
ireturn
L2:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mSqlitePos I
aload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/ResetKey(ILjava/lang/String;)I
istore 3
iload 3
istore 2
iload 3
ifne L1
aload 0
aload 1
putfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mDbKey Ljava/lang/String;
iload 3
ireturn
.limit locals 4
.limit stack 2
.end method

.method public setTmpFilePath(Ljava/lang/String;)Z
aload 1
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/SetTmpFilePath(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setVersion(I)V
aload 0
new java/lang/StringBuilder
dup
ldc "PRAGMA user_version="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method unlock()V
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLockingEnabled Z
ifne L0
return
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteDatabase/mLock Ljava/util/concurrent/locks/ReentrantLock;
invokevirtual java/util/concurrent/locks/ReentrantLock/unlock()V
return
.limit locals 1
.limit stack 1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
aload 0
aload 1
aload 2
aload 3
aload 4
iconst_0
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
ireturn
.limit locals 5
.limit stack 6
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
aload 2
ifnull L0
aload 2
invokevirtual android/content/ContentValues/size()I
ifne L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "Empty values"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 0
aload 1
aload 2
aload 3
aload 4
iload 5
invokespecial com/nd/rj/common/encryptsqlite/SQLiteDatabase/toUpdataSql(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)I
ireturn
.limit locals 6
.limit stack 7
.end method
