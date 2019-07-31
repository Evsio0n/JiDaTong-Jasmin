.bytecode 50.0
.class synchronized android/support/v4/app/NotificationCompatIceCreamSandwich
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;
new android/app/Notification$Builder
dup
aload 0
invokespecial android/app/Notification$Builder/<init>(Landroid/content/Context;)V
aload 1
getfield android/app/Notification/when J
invokevirtual android/app/Notification$Builder/setWhen(J)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/icon I
aload 1
getfield android/app/Notification/iconLevel I
invokevirtual android/app/Notification$Builder/setSmallIcon(II)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
invokevirtual android/app/Notification$Builder/setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 5
invokevirtual android/app/Notification$Builder/setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/sound Landroid/net/Uri;
aload 1
getfield android/app/Notification/audioStreamType I
invokevirtual android/app/Notification$Builder/setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/vibrate [J
invokevirtual android/app/Notification$Builder/setVibrate([J)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/ledARGB I
aload 1
getfield android/app/Notification/ledOnMS I
aload 1
getfield android/app/Notification/ledOffMS I
invokevirtual android/app/Notification$Builder/setLights(III)Landroid/app/Notification$Builder;
astore 0
aload 1
getfield android/app/Notification/flags I
iconst_2
iand
ifeq L0
iconst_1
istore 13
L1:
aload 0
iload 13
invokevirtual android/app/Notification$Builder/setOngoing(Z)Landroid/app/Notification$Builder;
astore 0
aload 1
getfield android/app/Notification/flags I
bipush 8
iand
ifeq L2
iconst_1
istore 13
L3:
aload 0
iload 13
invokevirtual android/app/Notification$Builder/setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
astore 0
aload 1
getfield android/app/Notification/flags I
bipush 16
iand
ifeq L4
iconst_1
istore 13
L5:
aload 0
iload 13
invokevirtual android/app/Notification$Builder/setAutoCancel(Z)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/defaults I
invokevirtual android/app/Notification$Builder/setDefaults(I)Landroid/app/Notification$Builder;
aload 2
invokevirtual android/app/Notification$Builder/setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 3
invokevirtual android/app/Notification$Builder/setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 4
invokevirtual android/app/Notification$Builder/setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 7
invokevirtual android/app/Notification$Builder/setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
aload 1
getfield android/app/Notification/deleteIntent Landroid/app/PendingIntent;
invokevirtual android/app/Notification$Builder/setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
astore 0
aload 1
getfield android/app/Notification/flags I
sipush 128
iand
ifeq L6
iconst_1
istore 13
L7:
aload 0
aload 8
iload 13
invokevirtual android/app/Notification$Builder/setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
aload 9
invokevirtual android/app/Notification$Builder/setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
iload 6
invokevirtual android/app/Notification$Builder/setNumber(I)Landroid/app/Notification$Builder;
iload 10
iload 11
iload 12
invokevirtual android/app/Notification$Builder/setProgress(IIZ)Landroid/app/Notification$Builder;
invokevirtual android/app/Notification$Builder/getNotification()Landroid/app/Notification;
areturn
L0:
iconst_0
istore 13
goto L1
L2:
iconst_0
istore 13
goto L3
L4:
iconst_0
istore 13
goto L5
L6:
iconst_0
istore 13
goto L7
.limit locals 14
.limit stack 4
.end method
