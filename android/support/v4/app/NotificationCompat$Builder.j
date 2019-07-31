.bytecode 50.0
.class public synchronized android/support/v4/app/NotificationCompat$Builder
.super java/lang/Object
.inner class public static Builder inner android/support/v4/app/NotificationCompat$Builder outer android/support/v4/app/NotificationCompat

.field 'mActions' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"

.field 'mContentInfo' Ljava/lang/CharSequence;

.field 'mContentIntent' Landroid/app/PendingIntent;

.field 'mContentText' Ljava/lang/CharSequence;

.field 'mContentTitle' Ljava/lang/CharSequence;

.field 'mContext' Landroid/content/Context;

.field 'mFullScreenIntent' Landroid/app/PendingIntent;

.field 'mLargeIcon' Landroid/graphics/Bitmap;

.field 'mNotification' Landroid/app/Notification;

.field 'mNumber' I

.field 'mPriority' I

.field 'mProgress' I

.field 'mProgressIndeterminate' Z

.field 'mProgressMax' I

.field 'mStyle' Landroid/support/v4/app/NotificationCompat$Style;

.field 'mSubText' Ljava/lang/CharSequence;

.field 'mTickerView' Landroid/widget/RemoteViews;

.field 'mUseChronometer' Z

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/NotificationCompat$Builder/mActions Ljava/util/ArrayList;
aload 0
new android/app/Notification
dup
invokespecial android/app/Notification/<init>()V
putfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mContext Landroid/content/Context;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
invokestatic java/lang/System/currentTimeMillis()J
putfield android/app/Notification/when J
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iconst_m1
putfield android/app/Notification/audioStreamType I
aload 0
iconst_0
putfield android/support/v4/app/NotificationCompat$Builder/mPriority I
return
.limit locals 2
.limit stack 3
.end method

.method private setFlag(IZ)V
iload 2
ifeq L0
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
astore 3
aload 3
aload 3
getfield android/app/Notification/flags I
iload 1
ior
putfield android/app/Notification/flags I
return
L0:
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
astore 3
aload 3
aload 3
getfield android/app/Notification/flags I
iload 1
iconst_m1
ixor
iand
putfield android/app/Notification/flags I
return
.limit locals 4
.limit stack 4
.end method

.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mActions Ljava/util/ArrayList;
new android/support/v4/app/NotificationCompat$Action
dup
iload 1
aload 2
aload 3
invokespecial android/support/v4/app/NotificationCompat$Action/<init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 4
.limit stack 6
.end method

.method public build()Landroid/app/Notification;
invokestatic android/support/v4/app/NotificationCompat/access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
aload 0
invokeinterface android/support/v4/app/NotificationCompat$NotificationCompatImpl/build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public getNotification()Landroid/app/Notification;
.annotation visible Ljava/lang/Deprecated;
.end annotation
invokestatic android/support/v4/app/NotificationCompat/access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
aload 0
invokeinterface android/support/v4/app/NotificationCompat$NotificationCompatImpl/build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
bipush 16
iload 1
invokespecial android/support/v4/app/NotificationCompat$Builder/setFlag(IZ)V
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/contentView Landroid/widget/RemoteViews;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mContentInfo Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mContentIntent Landroid/app/PendingIntent;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mContentText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mContentTitle Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 1
putfield android/app/Notification/defaults I
iload 1
iconst_4
iand
ifeq L0
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
astore 2
aload 2
aload 2
getfield android/app/Notification/flags I
iconst_1
ior
putfield android/app/Notification/flags I
L0:
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/deleteIntent Landroid/app/PendingIntent;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mFullScreenIntent Landroid/app/PendingIntent;
aload 0
sipush 128
iload 2
invokespecial android/support/v4/app/NotificationCompat$Builder/setFlag(IZ)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mLargeIcon Landroid/graphics/Bitmap;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
iconst_1
istore 4
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 1
putfield android/app/Notification/ledARGB I
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 2
putfield android/app/Notification/ledOnMS I
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 3
putfield android/app/Notification/ledOffMS I
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
getfield android/app/Notification/ledOnMS I
ifeq L0
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
getfield android/app/Notification/ledOffMS I
ifeq L0
iconst_1
istore 1
L1:
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
astore 5
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
getfield android/app/Notification/flags I
istore 2
iload 1
ifeq L2
iload 4
istore 1
L3:
aload 5
iload 1
iload 2
bipush -2
iand
ior
putfield android/app/Notification/flags I
aload 0
areturn
L0:
iconst_0
istore 1
goto L1
L2:
iconst_0
istore 1
goto L3
.limit locals 6
.limit stack 4
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
iload 1
putfield android/support/v4/app/NotificationCompat$Builder/mNumber I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
iconst_2
iload 1
invokespecial android/support/v4/app/NotificationCompat$Builder/setFlag(IZ)V
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
bipush 8
iload 1
invokespecial android/support/v4/app/NotificationCompat$Builder/setFlag(IZ)V
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
iload 1
putfield android/support/v4/app/NotificationCompat$Builder/mPriority I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
iload 1
putfield android/support/v4/app/NotificationCompat$Builder/mProgressMax I
aload 0
iload 2
putfield android/support/v4/app/NotificationCompat$Builder/mProgress I
aload 0
iload 3
putfield android/support/v4/app/NotificationCompat$Builder/mProgressIndeterminate Z
aload 0
areturn
.limit locals 4
.limit stack 2
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 1
putfield android/app/Notification/icon I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 1
putfield android/app/Notification/icon I
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 2
putfield android/app/Notification/iconLevel I
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/sound Landroid/net/Uri;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iconst_m1
putfield android/app/Notification/audioStreamType I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/sound Landroid/net/Uri;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
iload 2
putfield android/app/Notification/audioStreamType I
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
aload 1
if_acmpeq L0
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
ifnull L0
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
aload 0
invokevirtual android/support/v4/app/NotificationCompat$Style/setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Builder/mSubText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 0
aload 2
putfield android/support/v4/app/NotificationCompat$Builder/mTickerView Landroid/widget/RemoteViews;
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
iload 1
putfield android/support/v4/app/NotificationCompat$Builder/mUseChronometer Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
putfield android/app/Notification/vibrate [J
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
lload 1
putfield android/app/Notification/when J
aload 0
areturn
.limit locals 3
.limit stack 3
.end method
