.bytecode 50.0
.class public synchronized com/nd/android/u/controller/ChatGlobalVariable
.super java/lang/Object

.field public static final 'TEXT_SIZE_MAX' F = 30.0F


.field public static final 'TEXT_SIZE_MIN' F = 10.0F


.field public static final 'TEXT_SIZE_NORMAL' F = 17.0F


.field public static final 'TIME_SMALLER_SIZE' F = 2.0F


.field private static 'instance' Lcom/nd/android/u/controller/ChatGlobalVariable;

.field private 'commonconfig' Lcom/nd/android/u/controller/bean/CommonSettingConfig;

.field public 'dataSupplier' Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;

.field private 'fackBackList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.field private 'fileNameMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field public 'isOpenCamera' Z

.field private 'istransmit' Z

.field public 'loacl_multi_id' J

.field private 'mChatTextSize' F

.field public 'mShareFileServiceSid' Ljava/lang/String;

.field public 'messageTypeMap' Ljava/util/HashMap;
.signature "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
.end field

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
fconst_0
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
aload 0
iconst_0
putfield com/nd/android/u/controller/ChatGlobalVariable/isOpenCamera Z
aload 0
lconst_0
putfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/controller/ChatGlobalVariable/messageTypeMap Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getstatic com/nd/android/u/controller/ChatGlobalVariable/instance Lcom/nd/android/u/controller/ChatGlobalVariable;
ifnonnull L0
new com/nd/android/u/controller/ChatGlobalVariable
dup
invokespecial com/nd/android/u/controller/ChatGlobalVariable/<init>()V
putstatic com/nd/android/u/controller/ChatGlobalVariable/instance Lcom/nd/android/u/controller/ChatGlobalVariable;
L0:
getstatic com/nd/android/u/controller/ChatGlobalVariable/instance Lcom/nd/android/u/controller/ChatGlobalVariable;
areturn
.limit locals 0
.limit stack 2
.end method

.method private isMessageActivityNotOnTop(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/dataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ifnonnull L0
L1:
iconst_0
ireturn
L0:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 1
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
invokestatic com/nd/android/u/allCommonUtils/PackageUtils/isTopActivity(Landroid/content/Context;Ljava/lang/Class;)Z
ifeq L1
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/dataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/isValidMessage(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getChatTextSize()F
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
fconst_0
fcmpl
ifne L0
new java/lang/StringBuilder
dup
ldc "TEXT_SIZE"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
invokestatic com/nd/android/u/allCommonUtils/SharedPreferenceHelper/getInstance()Lcom/nd/android/u/allCommonUtils/SharedPreferenceHelper;
aload 1
iconst_0
invokevirtual com/nd/android/u/allCommonUtils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
i2f
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
fconst_0
fcmpl
ifne L0
aload 0
ldc_w 17.0F
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
L0:
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
ldc_w 10.0F
fcmpg
ifge L1
aload 0
ldc_w 10.0F
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
L1:
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
freturn
.limit locals 2
.limit stack 4
.end method

.method public getChatTimeTextSize()F
aload 0
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getChatTextSize()F
fconst_2
fsub
freturn
.limit locals 1
.limit stack 2
.end method

.method public getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/commonconfig Lcom/nd/android/u/controller/bean/CommonSettingConfig;
ifnonnull L0
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/getCommonSettingConfigDao()Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
invokevirtual com/nd/android/u/business/db/dao/CommonSettingConfigDao/findinitCommonSettingConfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
putfield com/nd/android/u/controller/ChatGlobalVariable/commonconfig Lcom/nd/android/u/controller/bean/CommonSettingConfig;
L0:
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/commonconfig Lcom/nd/android/u/controller/bean/CommonSettingConfig;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getFackBackList()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/fackBackList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic java/util/Collections/synchronizedList(Ljava/util/List;)Ljava/util/List;
putfield com/nd/android/u/controller/ChatGlobalVariable/fackBackList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/fackBackList Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getFileNameMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/fileNameMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/controller/ChatGlobalVariable/fileNameMap Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/fileNameMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 3
.end method

.method public isIstransmit()Z
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/istransmit Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public noNeedNotify(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
iconst_1
istore 3
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
astore 4
iload 3
istore 2
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getNewmsg_notification()I
getstatic com/nd/android/u/controller/bean/CommonSettingConfig/DO_NOT_NOTICE_NEW_MESSAGE I
if_icmpeq L0
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getRecmsg_background()I
iconst_1
if_icmpne L1
aload 0
aload 1
invokespecial com/nd/android/u/controller/ChatGlobalVariable/isMessageActivityNotOnTop(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
istore 2
L0:
iload 2
ireturn
L1:
iload 3
istore 2
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceivestart_hour()I
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceivestart_minute()I
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceiveend_hour()I
aload 4
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceiveend_minute()I
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/isBetweenPeriod(IIII)Z
ifeq L0
aload 0
aload 1
invokespecial com/nd/android/u/controller/ChatGlobalVariable/isMessageActivityNotOnTop(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public saveConfig()V
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/commonconfig Lcom/nd/android/u/controller/bean/CommonSettingConfig;
ifnonnull L0
return
L0:
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/getCommonSettingConfigDao()Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
aload 0
getfield com/nd/android/u/controller/ChatGlobalVariable/commonconfig Lcom/nd/android/u/controller/bean/CommonSettingConfig;
invokevirtual com/nd/android/u/business/db/dao/CommonSettingConfigDao/updateCommonSettingConfig(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)I
pop
return
.limit locals 1
.limit stack 2
.end method

.method public setChatTextSize(F)V
fload 1
ldc_w 10.0F
fcmpg
ifge L0
aload 0
ldc_w 10.0F
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
return
L0:
fload 1
ldc_w 30.0F
fcmpl
ifle L1
aload 0
ldc_w 30.0F
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
return
L1:
aload 0
fload 1
putfield com/nd/android/u/controller/ChatGlobalVariable/mChatTextSize F
return
.limit locals 2
.limit stack 2
.end method

.method public setIstransmit(Z)V
aload 0
iload 1
putfield com/nd/android/u/controller/ChatGlobalVariable/istransmit Z
return
.limit locals 2
.limit stack 2
.end method
