.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
.super com/nd/android/u/controller/bean/AbstractGroup
.implements com/nd/android/u/controller/innerInterface/IDbDataSupplier

.field public static final 'ALREADY_SUB' I = 1


.field public static final 'AUTHED' I = 1


.field public static final 'DATA_COMPLETE' I = 1


.field public static final 'STATUS_DISMISSED' I = 4


.field public static final 'STATUS_NORMAL' I = 1


.field public static final 'STATUS_NOT_CHECK' I = 0


.field public static final 'STATUS_NOT_PASSED' I = 2


.field public static final 'STATUS_RESERVED' I = 3


.field public static final 'SUBWAY_DEFAULT' I = 1


.field public static final 'SUBWAY_FORCE' I = 2


.field public static final 'SUBWAY_NORMAL' I = 0


.field public 'auth' I

.field public 'data_complete' I

.field public 'description' Ljava/lang/String;

.field public 'groupName' Ljava/lang/String;

.field public 'isGroupTitle' Z

.field public 'isShowDel' Z

.field public 'is_add_dest' I

.field public 'is_receive' I

.field public 'logo_update_time' J

.field public 'logo_url' Ljava/lang/String;

.field public 'mode' I

.field public 'name' Ljava/lang/String;

.field public 'pspid' Ljava/lang/String;

.field public 'qu_url' Ljava/lang/String;

.field public 'regtype' I

.field public 'status' I

.field public 'sub_status' I

.field public 'sub_time' Ljava/lang/String;

.field public 'subcount' J

.field public 'subscribers' Ljava/lang/String;

.field public 'subway' I

.field public 'type' I

.field public 'unsub_time' Ljava/lang/String;

.field public 'updateValues' Landroid/content/ContentValues;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/AbstractGroup/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/isShowDel Z
aload 0
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/setDefault()V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/controller/bean/AbstractGroup/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/isShowDel Z
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/gid Ljava/lang/String;
aload 0
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/setDefault()V
return
.limit locals 2
.limit stack 2
.end method

.method private setDefault()V
aload 0
bipush 40
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/groupType I
aload 0
ldc_w 65139
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/loginCmd I
aload 0
ldc_w 65140
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logoutCmd I
aload 0
ldc_w 65141
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/receiveCmd I
return
.limit locals 1
.limit stack 2
.end method

.method protected canReceiveGroupMessage()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 1
aload 1
ldc "pspid"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "name"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "description"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "sub_status"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "status"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "subscribers"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subscribers Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "subcount"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "is_receive"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/is_receive I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "is_add_dest"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/is_add_dest I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "logo_url"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "type"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "mode"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/mode I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "auth"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "qu_url"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/qu_url Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "subway"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "sub_time"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_time Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "unsub_time"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/unsub_time Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "logo_update_time"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_update_time J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "data_complete"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/data_complete I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "regtype"
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/regtype I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
instanceof com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
ifeq L1
aload 1
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getGenerateId()Ljava/lang/String;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getLastMsgId()J
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
iconst_5
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_5
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDbOperationSupport()Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier; 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getData(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMsgId()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 4
.end method

.method public getMsgId()J
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSearchCondition(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getTypeId()Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdateContentValues()Landroid/content/ContentValues;
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
sipush 527
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isDataComplete()Z
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/data_complete I
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

.method public parseFromCursor(Landroid/database/Cursor;)V
aload 0
aload 1
invokestatic com/nd/android/u/chatUtil/ReflectUtil/parseFromCursor(Ljava/lang/Object;Landroid/database/Cursor;)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/gid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected removeGroupRecord()V
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/deletePublicNumber(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 1
.end method
