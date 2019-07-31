.bytecode 50.0
.class public synchronized com/common/android/utils/db/CommonDaoFactory
.super java/lang/Object

.field private static 'instance' Lcom/common/android/utils/db/CommonDaoFactory;

.field private 'mSmileyHistoryDao' Lcom/common/android/utils/smiley/SmileyHistoryDao;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/common/android/utils/db/CommonDaoFactory;
getstatic com/common/android/utils/db/CommonDaoFactory/instance Lcom/common/android/utils/db/CommonDaoFactory;
ifnonnull L0
new com/common/android/utils/db/CommonDaoFactory
dup
invokespecial com/common/android/utils/db/CommonDaoFactory/<init>()V
putstatic com/common/android/utils/db/CommonDaoFactory/instance Lcom/common/android/utils/db/CommonDaoFactory;
L0:
getstatic com/common/android/utils/db/CommonDaoFactory/instance Lcom/common/android/utils/db/CommonDaoFactory;
areturn
.limit locals 0
.limit stack 2
.end method

.method public clear()V
aload 0
aconst_null
putfield com/common/android/utils/db/CommonDaoFactory/mSmileyHistoryDao Lcom/common/android/utils/smiley/SmileyHistoryDao;
return
.limit locals 1
.limit stack 2
.end method

.method public getSmileyHistoryDao()Lcom/common/android/utils/smiley/SmileyHistoryDao;
aload 0
getfield com/common/android/utils/db/CommonDaoFactory/mSmileyHistoryDao Lcom/common/android/utils/smiley/SmileyHistoryDao;
ifnonnull L0
aload 0
new com/common/android/utils/smiley/SmileyHistoryDao
dup
invokespecial com/common/android/utils/smiley/SmileyHistoryDao/<init>()V
putfield com/common/android/utils/db/CommonDaoFactory/mSmileyHistoryDao Lcom/common/android/utils/smiley/SmileyHistoryDao;
L0:
aload 0
getfield com/common/android/utils/db/CommonDaoFactory/mSmileyHistoryDao Lcom/common/android/utils/smiley/SmileyHistoryDao;
areturn
.limit locals 1
.limit stack 3
.end method
