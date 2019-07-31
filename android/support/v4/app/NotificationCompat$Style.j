.bytecode 50.0
.class public synchronized abstract android/support/v4/app/NotificationCompat$Style
.super java/lang/Object
.inner class public static abstract Style inner android/support/v4/app/NotificationCompat$Style outer android/support/v4/app/NotificationCompat

.field 'mBigContentTitle' Ljava/lang/CharSequence;

.field 'mBuilder' Landroid/support/v4/app/NotificationCompat$Builder;

.field 'mSummaryText' Ljava/lang/CharSequence;

.field 'mSummaryTextSet' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield android/support/v4/app/NotificationCompat$Style/mSummaryTextSet Z
return
.limit locals 1
.limit stack 2
.end method

.method public build()Landroid/app/Notification;
aconst_null
astore 1
aload 0
getfield android/support/v4/app/NotificationCompat$Style/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
ifnull L0
aload 0
getfield android/support/v4/app/NotificationCompat$Style/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
invokevirtual android/support/v4/app/NotificationCompat$Builder/build()Landroid/app/Notification;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 1
.end method

.method public setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
aload 0
getfield android/support/v4/app/NotificationCompat$Style/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 1
if_acmpeq L0
aload 0
aload 1
putfield android/support/v4/app/NotificationCompat$Style/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
getfield android/support/v4/app/NotificationCompat$Style/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
ifnull L0
aload 0
getfield android/support/v4/app/NotificationCompat$Style/mBuilder Landroid/support/v4/app/NotificationCompat$Builder;
aload 0
invokevirtual android/support/v4/app/NotificationCompat$Builder/setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
pop
L0:
return
.limit locals 2
.limit stack 2
.end method
