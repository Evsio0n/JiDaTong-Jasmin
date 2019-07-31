.bytecode 50.0
.class synchronized android/support/v4/app/NotificationCompatJellybean
.super java/lang/Object

.field private 'b' Landroid/app/Notification$Builder;

.method public <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V
aload 0
invokespecial java/lang/Object/<init>()V
new android/app/Notification$Builder
dup
aload 1
invokespecial android/app/Notification$Builder/<init>(Landroid/content/Context;)V
aload 2
getfield android/app/Notification/when J
invokevirtual android/app/Notification$Builder/setWhen(J)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/icon I
aload 2
getfield android/app/Notification/iconLevel I
invokevirtual android/app/Notification$Builder/setSmallIcon(II)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
invokevirtual android/app/Notification$Builder/setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 6
invokevirtual android/app/Notification$Builder/setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/sound Landroid/net/Uri;
aload 2
getfield android/app/Notification/audioStreamType I
invokevirtual android/app/Notification$Builder/setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/vibrate [J
invokevirtual android/app/Notification$Builder/setVibrate([J)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/ledARGB I
aload 2
getfield android/app/Notification/ledOnMS I
aload 2
getfield android/app/Notification/ledOffMS I
invokevirtual android/app/Notification$Builder/setLights(III)Landroid/app/Notification$Builder;
astore 1
aload 2
getfield android/app/Notification/flags I
iconst_2
iand
ifeq L0
iconst_1
istore 17
L1:
aload 1
iload 17
invokevirtual android/app/Notification$Builder/setOngoing(Z)Landroid/app/Notification$Builder;
astore 1
aload 2
getfield android/app/Notification/flags I
bipush 8
iand
ifeq L2
iconst_1
istore 17
L3:
aload 1
iload 17
invokevirtual android/app/Notification$Builder/setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
astore 1
aload 2
getfield android/app/Notification/flags I
bipush 16
iand
ifeq L4
iconst_1
istore 17
L5:
aload 1
iload 17
invokevirtual android/app/Notification$Builder/setAutoCancel(Z)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/defaults I
invokevirtual android/app/Notification$Builder/setDefaults(I)Landroid/app/Notification$Builder;
aload 3
invokevirtual android/app/Notification$Builder/setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 4
invokevirtual android/app/Notification$Builder/setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 16
invokevirtual android/app/Notification$Builder/setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 5
invokevirtual android/app/Notification$Builder/setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
aload 8
invokevirtual android/app/Notification$Builder/setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
aload 2
getfield android/app/Notification/deleteIntent Landroid/app/PendingIntent;
invokevirtual android/app/Notification$Builder/setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
astore 1
aload 2
getfield android/app/Notification/flags I
sipush 128
iand
ifeq L6
iconst_1
istore 17
L7:
aload 0
aload 1
aload 9
iload 17
invokevirtual android/app/Notification$Builder/setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
aload 10
invokevirtual android/app/Notification$Builder/setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
iload 7
invokevirtual android/app/Notification$Builder/setNumber(I)Landroid/app/Notification$Builder;
iload 14
invokevirtual android/app/Notification$Builder/setUsesChronometer(Z)Landroid/app/Notification$Builder;
iload 15
invokevirtual android/app/Notification$Builder/setPriority(I)Landroid/app/Notification$Builder;
iload 11
iload 12
iload 13
invokevirtual android/app/Notification$Builder/setProgress(IIZ)Landroid/app/Notification$Builder;
putfield android/support/v4/app/NotificationCompatJellybean/b Landroid/app/Notification$Builder;
return
L0:
iconst_0
istore 17
goto L1
L2:
iconst_0
istore 17
goto L3
L4:
iconst_0
istore 17
goto L5
L6:
iconst_0
istore 17
goto L7
.limit locals 18
.limit stack 5
.end method

.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
aload 0
getfield android/support/v4/app/NotificationCompatJellybean/b Landroid/app/Notification$Builder;
iload 1
aload 2
aload 3
invokevirtual android/app/Notification$Builder/addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
pop
return
.limit locals 4
.limit stack 4
.end method

.method public addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;)V
new android/app/Notification$BigPictureStyle
dup
aload 0
getfield android/support/v4/app/NotificationCompatJellybean/b Landroid/app/Notification$Builder;
invokespecial android/app/Notification$BigPictureStyle/<init>(Landroid/app/Notification$Builder;)V
aload 1
invokevirtual android/app/Notification$BigPictureStyle/setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
aload 4
invokevirtual android/app/Notification$BigPictureStyle/bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
astore 1
iload 2
ifeq L0
aload 1
aload 3
invokevirtual android/app/Notification$BigPictureStyle/setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
pop
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
new android/app/Notification$BigTextStyle
dup
aload 0
getfield android/support/v4/app/NotificationCompatJellybean/b Landroid/app/Notification$Builder;
invokespecial android/app/Notification$BigTextStyle/<init>(Landroid/app/Notification$Builder;)V
aload 1
invokevirtual android/app/Notification$BigTextStyle/setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
aload 4
invokevirtual android/app/Notification$BigTextStyle/bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
astore 1
iload 2
ifeq L0
aload 1
aload 3
invokevirtual android/app/Notification$BigTextStyle/setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
pop
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
.signature "(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;)V"
new android/app/Notification$InboxStyle
dup
aload 0
getfield android/support/v4/app/NotificationCompatJellybean/b Landroid/app/Notification$Builder;
invokespecial android/app/Notification$InboxStyle/<init>(Landroid/app/Notification$Builder;)V
aload 1
invokevirtual android/app/Notification$InboxStyle/setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
astore 1
iload 2
ifeq L0
aload 1
aload 3
invokevirtual android/app/Notification$InboxStyle/setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
pop
L0:
aload 4
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/CharSequence
invokevirtual android/app/Notification$InboxStyle/addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
pop
goto L1
L2:
return
.limit locals 5
.limit stack 3
.end method

.method public build()Landroid/app/Notification;
aload 0
getfield android/support/v4/app/NotificationCompatJellybean/b Landroid/app/Notification$Builder;
invokevirtual android/app/Notification$Builder/build()Landroid/app/Notification;
areturn
.limit locals 1
.limit stack 1
.end method
