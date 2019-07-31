.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/message/BaseDisplayMessage
.super ims/bean/NDMessage
.implements com/nd/android/u/controller/innerInterface/IMessageDisplay
.implements com/nd/android/u/controller/innerInterface/IDbDataSupplier
.implements com/nd/android/u/controller/innerInterface/IShareFileDataSupplier
.implements java/lang/Comparable
.signature "Lims/bean/NDMessage;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;Ljava/lang/Comparable<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"

.field protected static final 'COMBINED_TIME' I = 180


.field public 'current' I

.field public 'dataList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field protected 'dbCondition' Ljava/lang/String;

.field protected 'dbOperation' Lcom/nd/android/u/controller/innerInterface/IDbOperation;

.field public 'displayContent' Ljava/lang/String;

.field public 'downloadSize' J

.field protected 'errorMessage' Ljava/lang/String;

.field public 'extraflag' I

.field public 'filePath' Ljava/lang/String;

.field public 'isAck' I

.field public 'isFromLocal' Z

.field protected 'isGroup' Z

.field public 'isLast' Z

.field public 'isPlaying' Z

.field public 'isRead' I

.field protected 'isSaveToDb' Z

.field protected 'isShowInList' Z

.field public 'localFileSize' J

.field protected 'mDownloadFile' Ljava/io/File;

.field private 'mIsResend' Z

.field protected 'mProccessInterface' Lcom/nd/android/u/controller/innerInterface/IMessageProccess;

.field protected 'mRepostKey' Ljava/lang/String;

.field public 'parentType' I

.field public 'progressString' Ljava/lang/String;

.field public 'thumbnailPath' Ljava/lang/String;

.field public 'thumbnailUrl' Ljava/lang/String;

.field public 'timeString' Ljava/lang/String;

.field public 'updateValue' Landroid/content/ContentValues;

.field public 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial ims/bean/NDMessage/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
aload 0
iconst_3
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/current I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isGroup Z
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isSaveToDb Z
aload 0
iconst_m1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/parentType I
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mIsResend Z
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isShowInList Z
return
.limit locals 1
.limit stack 3
.end method

.method public checkExtraFlag(Z)V
iconst_0
istore 3
iload 3
istore 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
tableswitch -1
L0
L1
L2
L1
L3
L1
L1
L4
L5
default : L6
L6:
iload 3
istore 2
L1:
iload 2
ifeq L7
iload 1
ifeq L7
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/msgStateChanged(Ljava/lang/String;I)V
L7:
return
L5:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 0
bipush 8
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
istore 2
goto L1
L8:
new java/io/File
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 4
aload 4
invokevirtual java/io/File/exists()Z
ifne L9
aload 0
bipush 8
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
istore 2
goto L1
L9:
iload 3
istore 2
aload 4
invokevirtual java/io/File/length()J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/totalSize J
lcmp
ifeq L1
iload 3
istore 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/totalSize J
lconst_0
lcmp
ifle L1
aload 0
bipush 8
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
istore 2
goto L1
L2:
iload 3
istore 2
invokestatic ims/manager/MessageACKManager/getInstance()Lims/manager/MessageACKManager;
aload 0
invokevirtual ims/manager/MessageACKManager/contains(Lims/bean/NDMessage;)Z
ifne L1
iload 3
istore 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
invokestatic ims/IMSdk/isExitMessagePoolById(Ljava/lang/String;)Z
ifne L1
aload 0
iconst_2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
istore 2
goto L1
L3:
iload 3
istore 2
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/contains(Ljava/lang/Object;Ljava/lang/String;)Z
ifne L1
aload 0
iconst_4
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
istore 2
goto L1
L4:
iload 3
istore 2
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/contains(Ljava/lang/Object;Ljava/lang/String;)Z
ifne L1
aload 0
bipush 8
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
istore 2
goto L1
L0:
iload 3
istore 2
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
iconst_3
if_icmpeq L10
iload 3
istore 2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
sipush 20480
if_icmpne L1
L10:
aload 0
bipush 8
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iload 3
istore 2
goto L1
.limit locals 5
.limit stack 4
.end method

.method public abstract clickPortrait(ZLandroid/content/Context;)V
.end method

.method public compareTo(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)I
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getMsgId()J
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
lcmp
ifle L0
iconst_1
ireturn
L0:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getMsgId()J
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
lcmp
ifne L1
iconst_0
ireturn
L1:
iconst_m1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/compareTo(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public computeDate()V
aload 0
invokestatic ims/IMSdk/computeServertime()J
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
return
.limit locals 1
.limit stack 3
.end method

.method public containImage()Z
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 2
aload 2
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L2
aload 2
checkcast com/nd/android/u/controller/bean/ImageMessage
astore 2
aload 2
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 256
if_icmpeq L3
aload 2
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 259
if_icmpne L2
L3:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 1
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aload 0
invokevirtual com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/getParentType(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/parentType I
aload 1
ldc "generateid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "createdate"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "uidfrom"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "isack"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isAck I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "msgid"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/msgId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "category"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "message"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "isread"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isRead I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "parent"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/parentType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public createDate()Ljava/lang/String;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
aload 0
invokeinterface com/nd/android/u/controller/outInterface/IMessageAnalyser/createDate(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)Ljava/lang/String; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method protected createGenerateId()V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/msgId J
lconst_0
lcmp
ifne L0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidTo J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
return
L0:
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageType I
invokestatic com/nd/android/u/controller/utils/CommonUtils/generate(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
return
.limit locals 2
.limit stack 5
.end method

.method public abstract displayPortrait(Landroid/widget/ImageView;Z)V
.end method

.method public doDownload()Z
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/doDownload()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCreateDate()J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCurrent()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/current I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getDisplayClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDisplayContent()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDisplayDatas()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Object;>;"
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/dataList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDuration()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
ifgt L0
aload 0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getPath()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileUtils/getAudioDuration(Ljava/lang/String;)I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
sipush 1000
if_icmple L1
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
i2f
ldc_w 1000.0F
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
L1:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/MAX_RECORD_TIME I
if_icmple L2
aload 0
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/MAX_RECORD_TIME I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getErrorMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/errorMessage Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExtraFlag()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFile()Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mDownloadFile Ljava/io/File;
ifnonnull L4
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
lookupswitch
3 : L1
80 : L5
20480 : L1
20481 : L5
default : L7
L1:
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mDownloadFile Ljava/io/File;
L3:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mDownloadFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L4
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mDownloadFile Ljava/io/File;
invokevirtual java/io/File/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
L4:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mDownloadFile Ljava/io/File;
areturn
L5:
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fileName Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mDownloadFile Ljava/io/File;
L6:
goto L3
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L4
L7:
aconst_null
areturn
.limit locals 2
.limit stack 5
.end method

.method public getFileName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fileName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileSize()J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_4
if_icmpeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_1
if_icmpeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
ifeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_2
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/localFileSize J
lconst_0
lcmp
ifne L2
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/totalSize J
lreturn
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/localFileSize J
lreturn
L1:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/totalSize J
lreturn
.limit locals 1
.limit stack 4
.end method

.method public getFriendId()J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidTo J
lreturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
lreturn
.limit locals 1
.limit stack 4
.end method

.method public getGenerateId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/createGenerateId()V
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getGenerateIdHashCode()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
ifnonnull L0
bipush 17
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
sipush 527
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getIShareFileOperation()Lcom/nd/android/u/controller/innerInterface/IShareFileDataSupplier;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageContentType()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageData()Lims/bean/NDMessage;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageType()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgId()J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/msgId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method protected getNotifyNotice()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOriMessage()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
ifnonnull L0
aload 0
new com/nd/android/u/controller/messageProccess/BaseImsMessage
dup
aload 0
invokespecial com/nd/android/u/controller/messageProccess/BaseImsMessage/<init>(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mProccessInterface Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getProgress()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/progressString Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResource(I)Ljava/lang/String;
iload 1
tableswitch 0
L0
L1
L2
L0
default : L3
L3:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
areturn
L1:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
areturn
L2:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mRepostKey Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getSearchCondition(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getThumbnailPath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/thumbnailPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getThumbnailUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
ifnonnull L0
aconst_null
areturn
L0:
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/getMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
sipush 1000
if_icmpge L1
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/getMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
sipush 1000
if_icmplt L2
L1:
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "&thumb=440"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/thumbnailUrl Ljava/lang/String;
L3:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/thumbnailUrl Ljava/lang/String;
areturn
L2:
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "&thumb=120"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/thumbnailUrl Ljava/lang/String;
goto L3
.limit locals 1
.limit stack 4
.end method

.method public getTimeString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/timeString Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getUnreadMessage()Ljava/lang/String;
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/getAllUnreadMsgCount()I
istore 1
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/NOTI_REMAIN_MSG I
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method

.method public getUpdateContentValues()Landroid/content/ContentValues;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/updateValue Landroid/content/ContentValues;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/convertToContentValues()Landroid/content/ContentValues;
areturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/updateValue Landroid/content/ContentValues;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getViewType()I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
lookupswitch
0 : L0
2 : L1
3 : L2
80 : L3
81 : L4
20480 : L2
20481 : L3
default : L0
L0:
iconst_0
ireturn
L2:
iconst_3
ireturn
L3:
bipush 7
ireturn
L1:
iconst_2
ireturn
L4:
bipush 8
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getGenerateIdHashCode()I
bipush 31
imul
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/msgId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
iadd
ireturn
.limit locals 1
.limit stack 5
.end method

.method public isExistDownloadFile()Z
.catch java/io/IOException from L0 to L1 using L2
aconst_null
astore 1
L0:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
astore 2
L1:
aload 2
astore 1
L3:
aload 1
ifnull L4
aload 1
invokevirtual java/io/File/exists()Z
ifeq L4
iconst_1
ireturn
L2:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L3
L4:
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public isFromSelf()Z
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public isGroup()Z
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isGroup Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isNeedSaveDb()Z
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isSaveToDb Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isRead()Z
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isRead I
iconst_1
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isReceivedAudioFile()Z
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getFileName()Ljava/lang/String;
astore 1
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getMessageContentType()I
bipush 80
if_icmpeq L5
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getMessageContentType()I
sipush 20481
if_icmpne L6
L5:
aload 1
ifnull L6
aload 1
ldc ".amr"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L6
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifeq L6
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
bipush 7
if_icmpne L6
L0:
aload 1
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
astore 1
L1:
aload 1
ifnull L6
L3:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L6
aload 0
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
L4:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L6:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected onDownloadFail(ILjava/lang/String;)V
aload 0
aconst_null
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/errorMessage Ljava/lang/String;
iload 1
iconst_1
if_icmpne L0
aload 0
aload 2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/errorMessage Ljava/lang/String;
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "onDownloadFail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected onDownloadProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method protected onDownloadSuccess(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onFail(Ljava/lang/String;II)V
iload 3
iconst_1
if_icmpeq L0
aload 0
iload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/onUploadFail(ILjava/lang/String;)V
return
L0:
aload 0
iload 2
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/onDownloadFail(ILjava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onItemClick(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProgressed(JJI)V
iload 5
iconst_1
if_icmpeq L0
aload 0
lload 1
lload 3
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/onUploadProgress(JJ)V
return
L0:
aload 0
lload 1
lload 3
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/onDownloadProgress(JJ)V
return
.limit locals 6
.limit stack 5
.end method

.method public onSuccess(Ljava/lang/String;I)V
iload 2
iconst_1
if_icmpeq L0
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/onUploadSuccess(Ljava/lang/String;)V
return
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/onDownloadSuccess(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onUploadFail(ILjava/lang/String;)V
aload 0
aconst_null
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/errorMessage Ljava/lang/String;
iload 1
iconst_1
if_icmpne L0
aload 0
aload 2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/errorMessage Ljava/lang/String;
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "onUploadFail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected onUploadProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method protected onUploadSuccess(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "generateid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "createdate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
l2i
i2l
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
aload 0
aload 1
aload 1
ldc "uidfrom"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
aload 0
aload 1
aload 1
ldc "isack"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isAck I
aload 0
aload 1
aload 1
ldc "msgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/msgId J
aload 0
aload 1
aload 1
ldc "category"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageType I
aload 0
aload 1
aload 1
ldc "message"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "isread"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isRead I
aload 0
aload 1
aload 1
ldc "parent"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/parentType I
return
.limit locals 2
.limit stack 4
.end method

.method public abstract prepareMessage()Z
.end method

.method public repost()V
return
.limit locals 1
.limit stack 0
.end method

.method public resend()V
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteMessage()Z 0
ifeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_4
if_icmpne L1
iconst_1
istore 1
L2:
aload 0
invokestatic ims/IMSdk/getWseq()I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/wseq I
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mIsResend Z
aload 0
iload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/send(Z)V
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/OP_RESEND I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(I)V
return
L1:
iconst_0
istore 1
goto L2
L0:
ldc "delete fail"
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected saveToDb()V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isSaveToDb Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/saveToDb()Z 0
pop
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public send(Z)V
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/computeDate()V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L0
iload 1
ifeq L1
aload 0
iconst_4
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
L2:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/saveToDb()V
L3:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isShowInList Z
ifeq L4
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifySendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
L4:
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mIsResend Z
L5:
return
L1:
aload 0
iconst_2
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
goto L2
L0:
iload 1
ifeq L6
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mIsResend Z
ifne L7
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/getUidFromUrl(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
lcmp
ifeq L7
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
ldc "?"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iload 2
ifge L8
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "error transmit url:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iconst_4
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/saveToDb()V
L9:
aload 0
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fileOwner Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isShowInList Z
ifeq L5
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifySendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
L8:
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
iload 2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/mRepostKey Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/doRepost()Z 0
pop
goto L9
L7:
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fileOwner Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
aload 0
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fileOwner Ljava/lang/String;
L10:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/doUpload()Z 0
pop
goto L3
L6:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/sendMessage()V 0
goto L3
.limit locals 3
.limit stack 5
.end method

.method public setAckType(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/ackType I
return
.limit locals 2
.limit stack 2
.end method

.method public setCreateDate(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
return
.limit locals 3
.limit stack 3
.end method

.method public setCurrent(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/current I
return
.limit locals 2
.limit stack 2
.end method

.method public setDefaultValue(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidTo J
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
aload 0
invokestatic ims/IMSdk/computeServertime()J
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
aload 0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/loacl_multi_id J
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/multiId J
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isRead I
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isAck I
aload 0
invokestatic ims/IMSdk/getWseq()I
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/wseq I
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isFromLocal Z
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageType I
invokestatic com/nd/android/u/controller/utils/CommonUtils/generate(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public setDisPlayContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/displayContent Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDuration(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/duration I
return
.limit locals 2
.limit stack 2
.end method

.method public setExtraflag(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
return
.limit locals 2
.limit stack 2
.end method

.method public setExtraflagAndNotify(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
bipush 6
if_icmpne L1
L0:
aload 0
ldc "0%"
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/progressString Ljava/lang/String;
L1:
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/saveToDb()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/extraflag I
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setFileName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fileName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFilePath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFkey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/fKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFromUid(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L0
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isAck I
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public setGenerateId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/generateId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsRead(IZ)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isRead I
iload 2
ifeq L0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/saveToDb()V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public setMessageContentType(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/messageContentType I
return
.limit locals 2
.limit stack 2
.end method

.method public setMsgId(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/msgId J
return
.limit locals 3
.limit stack 3
.end method

.method public setMultiId(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/multiId J
return
.limit locals 3
.limit stack 3
.end method

.method public setOriMessage(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/oriMessage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSaveToDb(Z)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/isSaveToDb Z
return
.limit locals 2
.limit stack 2
.end method

.method public setTimeString(J)J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
lload 1
lsub
ldc2_w 180L
lcmp
iflt L0
aload 0
aload 0
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/timeString Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/createDate J
lreturn
L0:
aload 0
ldc ""
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/timeString Ljava/lang/String;
lload 1
lreturn
.limit locals 3
.limit stack 4
.end method

.method public setToUid(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/uidTo J
return
.limit locals 3
.limit stack 3
.end method

.method public setTotalSize(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/totalSize J
aload 0
getfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/filePath Ljava/lang/String;
ifnull L0
aload 0
lload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/localFileSize J
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public setUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/message/BaseDisplayMessage/url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setVoiceJson(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public abstract showNotify()V
.end method

.method public abstract updateRecentContactItem(I)V
.end method
