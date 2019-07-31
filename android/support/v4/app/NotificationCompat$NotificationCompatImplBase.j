.bytecode 50.0
.class synchronized android/support/v4/app/NotificationCompat$NotificationCompatImplBase
.super java/lang/Object
.implements android/support/v4/app/NotificationCompat$NotificationCompatImpl
.inner class static NotificationCompatImplBase inner android/support/v4/app/NotificationCompat$NotificationCompatImplBase outer android/support/v4/app/NotificationCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mNotification Landroid/app/Notification;
astore 2
aload 2
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContext Landroid/content/Context;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentTitle Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentText Ljava/lang/CharSequence;
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mContentIntent Landroid/app/PendingIntent;
invokevirtual android/app/Notification/setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
aload 1
getfield android/support/v4/app/NotificationCompat$Builder/mPriority I
ifle L0
aload 2
aload 2
getfield android/app/Notification/flags I
sipush 128
ior
putfield android/app/Notification/flags I
L0:
aload 2
areturn
.limit locals 3
.limit stack 5
.end method
