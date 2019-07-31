.bytecode 50.0
.class synchronized android/support/v4/app/NotificationCompat$NotificationCompatImplJellybean
.super java/lang/Object
.implements android/support/v4/app/NotificationCompat$NotificationCompatImpl
.inner class static NotificationCompatImplJellybean inner android/support/v4/app/NotificationCompat$NotificationCompatImplJellybean outer android/support/v4/app/NotificationCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
new android/support/v4/app/NotificationCompatJellybean
dup
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContext Landroid/content/Context;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentTitle Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentText Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentInfo Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mTickerView Landroid/widget/RemoteViews;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mNumber I
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentIntent Landroid/app/PendingIntent;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mFullScreenIntent Landroid/app/PendingIntent;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mLargeIcon Landroid/graphics/Bitmap;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mProgressMax I
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mProgress I
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mProgressIndeterminate Z
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mUseChronometer Z
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mPriority I
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mSubText Ljava/lang/CharSequence;
invokespecial android/support/v4/app/NotificationCompatJellybean/<init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V
astore 2
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mActions Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/support/v4/app/NotificationCompat$Action
astore 4
aload 2
aload 4
getfield android/support/v4/app/NotificationCompat$Action/icon I
aload 4
getfield android/support/v4/app/NotificationCompat$Action/title Ljava/lang/CharSequence;
aload 4
getfield android/support/v4/app/NotificationCompat$Action/actionIntent Landroid/app/PendingIntent;
invokevirtual android/support/v4/app/NotificationCompatJellybean/addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
goto L0
L1:
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
ifnull L2
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
instanceof android/support/v4/app/NotificationCompat$BigTextStyle
ifeq L3
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
checkcast android/support/v4/app/NotificationCompat$BigTextStyle
astore 1
aload 2
aload 1
getfield android/support/v4/app/NotificationCompat$BigTextStyle/mBigContentTitle Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$BigTextStyle/mSummaryTextSet Z
aload 1
getfield android/support/v4/app/NotificationCompat$BigTextStyle/mSummaryText Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$BigTextStyle/mBigText Ljava/lang/CharSequence;
invokevirtual android/support/v4/app/NotificationCompatJellybean/addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
L2:
aload 2
invokevirtual android/support/v4/app/NotificationCompatJellybean/build()Landroid/app/Notification;
areturn
L3:
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
instanceof android/support/v4/app/NotificationCompat$InboxStyle
ifeq L4
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
checkcast android/support/v4/app/NotificationCompat$InboxStyle
astore 1
aload 2
aload 1
getfield android/support/v4/app/NotificationCompat$InboxStyle/mBigContentTitle Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$InboxStyle/mSummaryTextSet Z
aload 1
getfield android/support/v4/app/NotificationCompat$InboxStyle/mSummaryText Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$InboxStyle/mTexts Ljava/util/ArrayList;
invokevirtual android/support/v4/app/NotificationCompatJellybean/addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
goto L2
L4:
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
instanceof android/support/v4/app/NotificationCompat$BigPictureStyle
ifeq L2
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mStyle Landroid/support/v4/app/NotificationCompat$Style;
checkcast android/support/v4/app/NotificationCompat$BigPictureStyle
astore 1
aload 2
aload 1
getfield android/support/v4/app/NotificationCompat$BigPictureStyle/mBigContentTitle Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$BigPictureStyle/mSummaryTextSet Z
aload 1
getfield android/support/v4/app/NotificationCompat$BigPictureStyle/mSummaryText Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$BigPictureStyle/mPicture Landroid/graphics/Bitmap;
invokevirtual android/support/v4/app/NotificationCompatJellybean/addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;)V
goto L2
.limit locals 5
.limit stack 18
.end method
