.bytecode 50.0
.class public synchronized com/common/android/utils/smiley/SmileyHistoryDao
.super java/lang/Object
.inner class static synthetic inner com/common/android/utils/smiley/SmileyHistoryDao$1
.inner class private static final SmileyMapper inner com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper outer com/common/android/utils/smiley/SmileyHistoryDao

.field public static final 'DELETE_FAIL' I = -1


.field public static final 'EXIST' I = -2


.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
getstatic com/common/android/utils/db/CommonDatabase/INSTANCE Lcom/common/android/utils/db/CommonDatabase;
invokevirtual com/common/android/utils/db/CommonDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/common/android/utils/smiley/SmileyHistoryDao/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 4
.end method

.method private SmileyToValues(Lcom/common/android/utils/smiley/Smiley;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "name"
aload 1
getfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "path"
aload 1
getfield com/common/android/utils/smiley/Smiley/path Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "shortcut"
aload 1
getfield com/common/android/utils/smiley/Smiley/shortCut Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "smiley_id"
aload 1
getfield com/common/android/utils/smiley/Smiley/id I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "tip"
aload 1
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "time"
aload 1
getfield com/common/android/utils/smiley/Smiley/lastUsedTime J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public deleteSmiley(Lcom/common/android/utils/smiley/Smiley;)Z
aload 1
ifnonnull L0
ldc "DB_ERROR"
ldc "deleteSmiley null smiley"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_smiley_history"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "smiley_id = ?"
aload 1
getfield com/common/android/utils/smiley/Smiley/id I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/common/android/utils/smiley/SmileyHistoryDao/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getSmileyList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_smiley_history"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
ldc "time DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/common/android/utils/smiley/SmileyHistoryDao/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper
dup
aconst_null
invokespecial com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper/<init>(Lcom/common/android/utils/smiley/SmileyHistoryDao$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public insertSmiley(Lcom/common/android/utils/smiley/Smiley;I)J
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
aload 0
monitorenter
aload 1
ifnonnull L3
L0:
ldc "DB_ERROR"
ldc "insertSmiley null smiley"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
ldc2_w -1L
lstore 5
L18:
aload 0
monitorexit
lload 5
lreturn
L3:
aload 0
invokevirtual com/common/android/utils/smiley/SmileyHistoryDao/getSmileyList()Ljava/util/List;
astore 7
L4:
aload 7
ifnonnull L10
iconst_0
istore 3
L19:
iconst_0
istore 4
L5:
aload 7
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L6:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/smiley/Smiley
astore 9
aload 9
getfield com/common/android/utils/smiley/Smiley/id I
aload 1
getfield com/common/android/utils/smiley/Smiley/id I
if_icmpne L6
L7:
iconst_1
istore 4
L8:
aload 0
aload 9
invokevirtual com/common/android/utils/smiley/SmileyHistoryDao/deleteSmiley(Lcom/common/android/utils/smiley/Smiley;)Z
ifne L6
L9:
ldc2_w -1L
lstore 5
goto L18
L10:
aload 7
invokeinterface java/util/List/size()I 0
istore 3
L11:
goto L19
L12:
aload 0
aload 1
invokespecial com/common/android/utils/smiley/SmileyHistoryDao/SmileyToValues(Lcom/common/android/utils/smiley/Smiley;)Landroid/content/ContentValues;
astore 1
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 8
aload 8
ldc "uu_smiley_history"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
L13:
iload 4
ifne L16
iload 3
iload 2
if_icmplt L16
L14:
aload 0
aload 7
iload 3
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/common/android/utils/smiley/Smiley
invokevirtual com/common/android/utils/smiley/SmileyHistoryDao/deleteSmiley(Lcom/common/android/utils/smiley/Smiley;)Z
ifne L16
L15:
ldc2_w -1L
lstore 5
goto L18
L16:
aload 0
getfield com/common/android/utils/smiley/SmileyHistoryDao/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 8
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lstore 5
L17:
goto L18
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 10
.limit stack 4
.end method
