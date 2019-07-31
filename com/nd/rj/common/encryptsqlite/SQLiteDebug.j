.bytecode 50.0
.class public final synchronized com/nd/rj/common/encryptsqlite/SQLiteDebug
.super java/lang/Object
.inner class public static DbStats inner com/nd/rj/common/encryptsqlite/SQLiteDebug$DbStats outer com/nd/rj/common/encryptsqlite/SQLiteDebug
.inner class public static PagerStats inner com/nd/rj/common/encryptsqlite/SQLiteDebug$PagerStats outer com/nd/rj/common/encryptsqlite/SQLiteDebug

.field public static final 'DEBUG_ACTIVE_CURSOR_FINALIZATION' Z

.field public static final 'DEBUG_LOCK_TIME_TRACKING' Z

.field public static final 'DEBUG_LOCK_TIME_TRACKING_STACK_TRACE' Z

.field public static final 'DEBUG_SQL_CACHE' Z

.field public static final 'DEBUG_SQL_STATEMENTS' Z

.field public static final 'DEBUG_SQL_TIME' Z

.field private static 'sNumActiveCursorsFinalized' I

.method static <clinit>()V
ldc "SQLiteStatements"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_SQL_STATEMENTS Z
ldc "SQLiteTime"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_SQL_TIME Z
ldc "SQLiteCompiledSql"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_SQL_CACHE Z
ldc "SQLiteCursorClosing"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_ACTIVE_CURSOR_FINALIZATION Z
ldc "SQLiteLockTime"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_LOCK_TIME_TRACKING Z
ldc "SQLiteLockStackTrace"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/DEBUG_LOCK_TIME_TRACKING_STACK_TRACE Z
iconst_0
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/sNumActiveCursorsFinalized I
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static native getHeapAllocatedSize()J
.end method

.method public static native getHeapDirtyPages([I)V
.end method

.method public static native getHeapFreeSize()J
.end method

.method public static native getHeapSize()J
.end method

.method public static getNumActiveCursorsFinalized()I
getstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/sNumActiveCursorsFinalized I
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static native getPagerStats(Lcom/nd/rj/common/encryptsqlite/SQLiteDebug$PagerStats;)V
.end method

.method static notifyActiveCursorFinalized()V
.catch all from L0 to L1 using L2
ldc com/nd/rj/common/encryptsqlite/SQLiteDebug
monitorenter
L0:
getstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/sNumActiveCursorsFinalized I
iconst_1
iadd
putstatic com/nd/rj/common/encryptsqlite/SQLiteDebug/sNumActiveCursorsFinalized I
L1:
ldc com/nd/rj/common/encryptsqlite/SQLiteDebug
monitorexit
return
L2:
astore 0
ldc com/nd/rj/common/encryptsqlite/SQLiteDebug
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method
