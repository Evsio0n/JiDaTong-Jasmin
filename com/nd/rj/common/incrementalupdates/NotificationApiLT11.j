.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/NotificationApiLT11
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/NotificationInterface

.field public static final 'TAG' Ljava/lang/String;

.field private 'mCtx' Landroid/content/Context;

.field private 'mNM' Landroid/app/NotificationManager;

.field private 'mNotification' Landroid/app/Notification;

.field private 'mTitle' Ljava/lang/String;

.field private 'pi' Landroid/app/PendingIntent;

.method static <clinit>()V
ldc com/nd/rj/common/incrementalupdates/NotificationApiLT11
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/rj/common/incrementalupdates/NotificationApiLT11/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/pi Landroid/app/PendingIntent;
return
.limit locals 1
.limit stack 2
.end method

.method public cancel(I)V
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNM Landroid/app/NotificationManager;
iload 1
invokevirtual android/app/NotificationManager/cancel(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public getNotification()Landroid/app/Notification;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
areturn
.limit locals 1
.limit stack 1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mTitle Ljava/lang/String;
aload 0
aload 1
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
putfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNM Landroid/app/NotificationManager;
aload 0
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mCtx Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
iconst_0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
iconst_0
invokestatic android/app/PendingIntent/getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
putfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/pi Landroid/app/PendingIntent;
aload 0
new android/app/Notification
dup
invokespecial android/app/Notification/<init>()V
putfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
astore 1
aload 1
aload 1
getfield android/app/Notification/flags I
bipush 16
ior
putfield android/app/Notification/flags I
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
iload 3
putfield android/app/Notification/icon I
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/pi Landroid/app/PendingIntent;
putfield android/app/Notification/contentIntent Landroid/app/PendingIntent;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mTitle Ljava/lang/String;
ldc ""
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/pi Landroid/app/PendingIntent;
invokevirtual android/app/Notification/setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
return
.limit locals 4
.limit stack 5
.end method

.method public simpleUpdate(Ljava/lang/String;I)V
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mTitle Ljava/lang/String;
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/pi Landroid/app/PendingIntent;
invokevirtual android/app/Notification/setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNM Landroid/app/NotificationManager;
iload 2
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiLT11/mNotification Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 3
.limit stack 5
.end method

.method public updateProgress(Ljava/lang/String;IJJ)V
aload 0
aload 1
iload 2
invokevirtual com/nd/rj/common/incrementalupdates/NotificationApiLT11/simpleUpdate(Ljava/lang/String;I)V
return
.limit locals 7
.limit stack 3
.end method
