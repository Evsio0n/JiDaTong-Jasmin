.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/DownloadProgress
.super java/lang/Object
.inner class public static Downloaded inner com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded outer com/nd/rj/common/incrementalupdates/DownloadProgress

.field public static final 'notifyId' I = 85678


.field private 'mNI' Lcom/nd/rj/common/incrementalupdates/NotificationInterface;

.method public <init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/NotificationInterface;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmple L0
aload 0
new com/nd/rj/common/incrementalupdates/NotificationApiGT10
dup
invokespecial com/nd/rj/common/incrementalupdates/NotificationApiGT10/<init>()V
putfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
L1:
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
aload 1
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
aload 1
ldc "update"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
ldc "update_icon"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/init(Landroid/content/Context;Ljava/lang/String;I)V 3
return
L0:
aload 0
new com/nd/rj/common/incrementalupdates/NotificationApiLT11
dup
invokespecial com/nd/rj/common/incrementalupdates/NotificationApiLT11/<init>()V
putfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
goto L1
.limit locals 3
.limit stack 6
.end method

.method private getEventType()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
ldc com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
areturn
.limit locals 1
.limit stack 1
.end method

.method private percent(JJ)Ljava/lang/String;
dconst_1
lload 1
l2d
dmul
lload 3
l2d
ddiv
dstore 5
invokestatic java/text/NumberFormat/getPercentInstance()Ljava/text/NumberFormat;
astore 7
aload 7
iconst_2
invokevirtual java/text/NumberFormat/setMinimumFractionDigits(I)V
aload 7
dload 5
invokevirtual java/text/NumberFormat/format(D)Ljava/lang/String;
areturn
.limit locals 8
.limit stack 4
.end method

.method public getNotificationInterface()Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onEventMainThread(Lcom/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded;)V
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/isPending()Z
ifeq L0
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
ldc "\u66f4\u65b0\u51c6\u5907\u4e2d\uff0c\u8bf7\u7a0d\u5019"
ldc_w 85678
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/simpleUpdate(Ljava/lang/String;I)V 2
return
L0:
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/isFailed()Z
ifeq L1
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
ldc "\u5347\u7ea7\u5931\u8d25"
ldc_w 85678
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/simpleUpdate(Ljava/lang/String;I)V 2
return
L1:
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/isMerging()Z
ifeq L2
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
ldc "\u6b63\u5728\u5408\u5e76\u589e\u91cf\u5305\uff0c\u8bf7\u7a0d\u5019"
ldc_w 85678
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/simpleUpdate(Ljava/lang/String;I)V 2
return
L2:
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/isClear()Z
ifeq L3
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
ldc_w 85678
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/cancel(I)V 1
return
L3:
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress/mNI Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "\u4e0b\u8f7d\u4e2d %s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
aload 1
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
aload 1
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress/percent(JJ)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
ldc_w 85678
aload 1
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
aload 1
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/updateProgress(Ljava/lang/String;IJJ)V 6
return
.limit locals 2
.limit stack 11
.end method

.method public registerEvent(Lde/greenrobot/event/EventBus;)V
aload 1
aload 0
aload 0
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress/getEventType()Ljava/lang/Class;
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 4
.end method

.method public unRegisterEvent(Lde/greenrobot/event/EventBus;)V
aload 1
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 0
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress/getEventType()Ljava/lang/Class;
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 6
.end method
