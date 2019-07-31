.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/NotificationApiGT10
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/NotificationInterface

.field private 'mBuilder' Landroid/support/v4/app/NotificationCompat$Builder;

.field private 'mNM' Landroid/app/NotificationManager;

.field private 'mTitle' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public cancel(I)V
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mNM Landroid/app/NotificationManager;
iload 1
invokevirtual android/app/NotificationManager/cancel(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mTitle Ljava/lang/String;
aload 0
aload 1
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
putfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mNM Landroid/app/NotificationManager;
aload 0
new android/support/v4/app/NotificationCompat$Builder
dup
aload 1
invokespecial android/support/v4/app/NotificationCompat$Builder/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mTitle Ljava/lang/String;
invokevirtual android/support/v4/app/NotificationCompat$Builder/setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 1
ldc "update_icon"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/support/v4/app/NotificationCompat$Builder/setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
pop
return
.limit locals 4
.limit stack 4
.end method

.method public simpleUpdate(Ljava/lang/String;I)V
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 1
invokevirtual android/support/v4/app/NotificationCompat$Builder/setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
pop
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 1
invokevirtual android/support/v4/app/NotificationCompat$Builder/setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
pop
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mNM Landroid/app/NotificationManager;
iload 2
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
invokevirtual android/support/v4/app/NotificationCompat$Builder/build()Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 3
.limit stack 3
.end method

.method public updateProgress(Ljava/lang/String;IJJ)V
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
lload 3
l2i
lload 5
l2i
iconst_0
invokevirtual android/support/v4/app/NotificationCompat$Builder/setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
aload 1
invokevirtual android/support/v4/app/NotificationCompat$Builder/setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
pop
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mNM Landroid/app/NotificationManager;
iload 2
aload 0
getfield com/nd/rj/common/incrementalupdates/NotificationApiGT10/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
invokevirtual android/support/v4/app/NotificationCompat$Builder/build()Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 7
.limit stack 4
.end method
