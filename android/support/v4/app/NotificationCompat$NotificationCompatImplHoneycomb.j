.bytecode 50.0
.class synchronized android/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb
.super java/lang/Object
.implements android/support/v4/app/NotificationCompat$NotificationCompatImpl
.inner class static NotificationCompatImplHoneycomb inner android/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb outer android/support/v4/app/NotificationCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
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
invokestatic android/support/v4/app/NotificationCompatHoneycomb/add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;
areturn
.limit locals 2
.limit stack 10
.end method
