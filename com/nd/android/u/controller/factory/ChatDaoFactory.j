.bytecode 50.0
.class public synchronized com/nd/android/u/controller/factory/ChatDaoFactory
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/controller/factory/ChatDaoFactory;

.field private 'mAppMessageDao' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.field private 'mCommonSettingConfigDao' Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;

.field private 'mDbCreatorMap' Ljava/util/HashMap;
.signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nd/android/u/controller/outInterface/IDbCreator;>;"
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
.end field

.field private 'mGroupMessageDao' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.field private 'mQuickReplyDao' Lcom/nd/android/u/business/db/dao/QuickReplyDao;

.field private 'mSystemMessageDao' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.field private 'mUserMessageDao' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.method static <clinit>()V
new com/nd/android/u/controller/factory/ChatDaoFactory
dup
invokespecial com/nd/android/u/controller/factory/ChatDaoFactory/<init>()V
putstatic com/nd/android/u/controller/factory/ChatDaoFactory/instance Lcom/nd/android/u/controller/factory/ChatDaoFactory;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method private getAppMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mAppMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
aload 0
new com/nd/android/u/business/db/dao/ChatMessageDao_App
dup
invokespecial com/nd/android/u/business/db/dao/ChatMessageDao_App/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mAppMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mAppMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getGroupMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mGroupMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
aload 0
new com/nd/android/u/business/db/dao/ChatMessageDao_Group
dup
invokespecial com/nd/android/u/business/db/dao/ChatMessageDao_Group/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mGroupMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mGroupMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
getstatic com/nd/android/u/controller/factory/ChatDaoFactory/instance Lcom/nd/android/u/controller/factory/ChatDaoFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method private getSystemMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mSystemMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
aload 0
new com/nd/android/u/business/db/dao/ChatMessageDao_System
dup
invokespecial com/nd/android/u/business/db/dao/ChatMessageDao_System/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mSystemMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mSystemMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getUserMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mUserMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
ifnonnull L0
aload 0
new com/nd/android/u/business/db/dao/ChatMessageDao_Person
dup
invokespecial com/nd/android/u/business/db/dao/ChatMessageDao_Person/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mUserMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mUserMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
.limit locals 1
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/isEmpty()Z
ifne L0
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
aload 0
aconst_null
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 0
aconst_null
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mCommonSettingConfigDao Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
aload 0
aconst_null
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mUserMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
aconst_null
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mGroupMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
aconst_null
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mSystemMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
aconst_null
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mAppMessageDao Lcom/nd/android/u/controller/innerInterface/IDbOperation;
return
L2:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/outInterface/IDbCreator
invokeinterface com/nd/android/u/controller/outInterface/IDbCreator/clear()V 0
goto L1
.limit locals 2
.limit stack 2
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/isEmpty()Z
ifne L0
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
return
L2:
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/outInterface/IDbCreator
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IDbCreator/createTable(Landroid/database/sqlite/SQLiteDatabase;)V 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IDbCreator
astore 2
aload 2
ifnull L0
aload 2
invokeinterface com/nd/android/u/controller/outInterface/IDbCreator/getDbOperation()Lcom/nd/android/u/controller/innerInterface/IDbOperation; 0
areturn
L0:
iload 1
tableswitch 0
L1
L2
L3
L4
default : L5
L5:
aconst_null
areturn
L1:
aload 0
invokespecial com/nd/android/u/controller/factory/ChatDaoFactory/getUserMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
L2:
aload 0
invokespecial com/nd/android/u/controller/factory/ChatDaoFactory/getGroupMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
L3:
aload 0
invokespecial com/nd/android/u/controller/factory/ChatDaoFactory/getSystemMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
L4:
aload 0
invokespecial com/nd/android/u/controller/factory/ChatDaoFactory/getAppMessageDao()Lcom/nd/android/u/controller/innerInterface/IDbOperation;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getCommonSettingConfigDao()Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mCommonSettingConfigDao Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
ifnonnull L0
aload 0
new com/nd/android/u/business/db/dao/CommonSettingConfigDao
dup
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mCommonSettingConfigDao Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mCommonSettingConfigDao Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getQuickReplyDao()Lcom/nd/android/u/business/db/dao/QuickReplyDao;
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
ifnonnull L0
aload 0
new com/nd/android/u/business/db/dao/QuickReplyDao
dup
invokespecial com/nd/android/u/business/db/dao/QuickReplyDao/<init>()V
putfield com/nd/android/u/controller/factory/ChatDaoFactory/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mQuickReplyDao Lcom/nd/android/u/business/db/dao/QuickReplyDao;
areturn
.limit locals 1
.limit stack 3
.end method

.method public registDbCreator(ILcom/nd/android/u/controller/outInterface/IDbCreator;)V
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
ifnonnull L0
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public upgrade(ILandroid/database/sqlite/SQLiteDatabase;)V
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/isEmpty()Z
ifne L0
aload 0
getfield com/nd/android/u/controller/factory/ChatDaoFactory/mDbCreatorMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
return
L2:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/outInterface/IDbCreator
iload 1
aload 2
invokeinterface com/nd/android/u/controller/outInterface/IDbCreator/upgrade(ILandroid/database/sqlite/SQLiteDatabase;)V 2
goto L1
.limit locals 4
.limit stack 3
.end method
