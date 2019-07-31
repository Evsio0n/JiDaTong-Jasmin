.bytecode 50.0
.class public synchronized com/nd/android/u/commonWidget/NotificationMsg
.super java/lang/Object
.inner class inner com/nd/android/u/commonWidget/NotificationMsg$1

.field private static 'instance' Lcom/nd/android/u/commonWidget/NotificationMsg;

.field private 'mExecutorService' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mScheduledFuture' Ljava/util/concurrent/ScheduledFuture; signature "Ljava/util/concurrent/ScheduledFuture<*>;"

.field private 'mVibrate' [J

.field private 'mVibrator' Landroid/os/Vibrator;

.field private 'myNoti' Landroid/app/Notification;

.field private 'myNotiLight' Landroid/app/Notification;

.field private 'myNotiManager' Landroid/app/NotificationManager;

.method static <clinit>()V
new com/nd/android/u/commonWidget/NotificationMsg
dup
invokespecial com/nd/android/u/commonWidget/NotificationMsg/<init>()V
putstatic com/nd/android/u/commonWidget/NotificationMsg/instance Lcom/nd/android/u/commonWidget/NotificationMsg;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/app/Notification
dup
invokespecial android/app/Notification/<init>()V
putfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
aload 0
new android/app/Notification
dup
invokespecial android/app/Notification/<init>()V
putfield com/nd/android/u/commonWidget/NotificationMsg/myNotiLight Landroid/app/Notification;
iconst_4
newarray long
astore 1
aload 1
iconst_0
ldc2_w 50L
lastore
aload 1
iconst_1
ldc2_w 300L
lastore
aload 0
aload 1
putfield com/nd/android/u/commonWidget/NotificationMsg/mVibrate [J
aload 0
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
ldc "vibrator"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/os/Vibrator
putfield com/nd/android/u/commonWidget/NotificationMsg/mVibrator Landroid/os/Vibrator;
aload 0
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
putfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
aload 0
invokestatic java/util/concurrent/Executors/newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/commonWidget/NotificationMsg/mExecutorService Ljava/util/concurrent/ScheduledExecutorService;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nd/android/u/commonWidget/NotificationMsg;)Landroid/app/NotificationManager;
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nd/android/u/commonWidget/NotificationMsg;)V
aload 0
invokespecial com/nd/android/u/commonWidget/NotificationMsg/notifyLight()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nd/android/u/commonWidget/NotificationMsg;)Ljava/util/concurrent/ScheduledFuture;
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nd/android/u/commonWidget/NotificationMsg;Ljava/util/concurrent/ScheduledFuture;)V
aload 0
aload 1
putfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
getstatic com/nd/android/u/commonWidget/NotificationMsg/instance Lcom/nd/android/u/commonWidget/NotificationMsg;
areturn
.limit locals 0
.limit stack 1
.end method

.method private isIdle()Z
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getCallState()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private notifyLight()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getLightReminder()I
getstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_LIGHT I
if_icmpeq L0
return
L0:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiLight Landroid/app/Notification;
astore 1
aload 1
aload 1
getfield android/app/Notification/flags I
iconst_1
ior
putfield android/app/Notification/flags I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiLight Landroid/app/Notification;
ldc_w -16776961
putfield android/app/Notification/ledARGB I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiLight Landroid/app/Notification;
sipush 300
putfield android/app/Notification/ledOnMS I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiLight Landroid/app/Notification;
sipush 6000
putfield android/app/Notification/ledOffMS I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/APP_NAME I
iconst_2
iadd
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiLight Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 2
.limit stack 3
.end method

.method public callbackSetNotiType()V
aload 0
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/cancelMsgNotify()V
aload 0
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/cancelLigthNotify()V
return
.limit locals 1
.limit stack 1
.end method

.method public cancelLigthNotify()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/APP_NAME I
iconst_2
iadd
invokevirtual android/app/NotificationManager/cancel(I)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 3
.end method

.method public cancelMsgNotify()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/APP_NAME I
invokevirtual android/app/NotificationManager/cancel(I)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public cancelNotify()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
ifnull L3
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aload 0
aconst_null
putfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
L3:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNotiManager Landroid/app/NotificationManager;
invokevirtual android/app/NotificationManager/cancelAll()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
aload 0
aload 1
aload 2
aload 3
aload 4
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/NOTI_BREEDING I
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
areturn
.limit locals 5
.limit stack 6
.end method

.method public obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
astore 6
aload 6
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getSilent()I
getstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_SOUND I
if_icmpne L0
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
new java/lang/StringBuilder
dup
ldc "android.resource://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putfield android/app/Notification/sound Landroid/net/Uri;
L1:
aload 6
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getTouchVibrate()I
getstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_VIBRATE I
if_icmpne L2
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mVibrator Landroid/os/Vibrator;
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mVibrate [J
iconst_m1
invokevirtual android/os/Vibrator/vibrate([JI)V
L3:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 6
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/NOTI_ICON I
putfield android/app/Notification/icon I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
aload 1
putfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
astore 1
aload 1
aload 1
getfield android/app/Notification/flags I
bipush 16
ior
putfield android/app/Notification/flags I
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
invokestatic java/lang/System/currentTimeMillis()J
putfield android/app/Notification/when J
aload 4
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 6
iconst_0
aload 4
ldc_w 134217728
invokestatic android/app/PendingIntent/getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
astore 1
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
aload 6
aload 2
aload 3
aload 1
invokevirtual android/app/Notification/setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
areturn
L0:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
aconst_null
putfield android/app/Notification/sound Landroid/net/Uri;
goto L1
L2:
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/myNoti Landroid/app/Notification;
astore 6
aload 6
aload 6
getfield android/app/Notification/defaults I
ldc_w 65533
iand
putfield android/app/Notification/defaults I
goto L3
.limit locals 7
.limit stack 5
.end method

.method protected popupWindow(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Landroid/os/Bundle;)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getPopup_reminder()I
getstatic com/nd/android/u/controller/bean/CommonSettingConfig/PUSH_WINDOW I
if_icmpne L0
iconst_1
istore 3
L1:
iload 3
ifeq L2
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
getfield com/nd/android/u/controller/ChatGlobalVariable/isOpenCamera Z
invokestatic com/nd/android/u/allCommonUtils/PackageUtils/isTopActivity(Landroid/content/Context;Z)Z
ifne L2
aload 0
invokespecial com/nd/android/u/commonWidget/NotificationMsg/isIdle()Z
ifne L3
L2:
return
L0:
iconst_0
istore 3
goto L1
L3:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc_w 276824064
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
invokevirtual android/os/Bundle/clone()Ljava/lang/Object;
checkcast android/os/Bundle
astore 2
aload 1
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
getfield com/nd/android/u/controller/ChatConfiguration/popMessageActivity Ljava/lang/Class;
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 3
.end method

.method public showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;)V
aload 0
aload 1
aload 2
aload 3
aconst_null
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;Landroid/os/Bundle;)V
return
.limit locals 4
.limit stack 5
.end method

.method public showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
ifnull L0
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aload 0
aconst_null
putfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
L0:
aload 0
aload 0
getfield com/nd/android/u/commonWidget/NotificationMsg/mExecutorService Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/android/u/commonWidget/NotificationMsg$1
dup
aload 0
aload 1
aload 3
aload 4
aload 2
invokespecial com/nd/android/u/commonWidget/NotificationMsg$1/<init>(Lcom/nd/android/u/commonWidget/NotificationMsg;Landroid/app/Notification;Ljava/lang/Boolean;Landroid/os/Bundle;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
lconst_1
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 4
putfield com/nd/android/u/commonWidget/NotificationMsg/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
return
.limit locals 5
.limit stack 9
.end method
