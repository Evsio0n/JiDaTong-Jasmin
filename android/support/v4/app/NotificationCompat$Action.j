.bytecode 50.0
.class public synchronized android/support/v4/app/NotificationCompat$Action
.super java/lang/Object
.inner class public static Action inner android/support/v4/app/NotificationCompat$Action outer android/support/v4/app/NotificationCompat

.field public 'actionIntent' Landroid/app/PendingIntent;

.field public 'icon' I

.field public 'title' Ljava/lang/CharSequence;

.method public <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield android/support/v4/app/NotificationCompat$Action/icon I
aload 0
aload 2
putfield android/support/v4/app/NotificationCompat$Action/title Ljava/lang/CharSequence;
aload 0
aload 3
putfield android/support/v4/app/NotificationCompat$Action/actionIntent Landroid/app/PendingIntent;
return
.limit locals 4
.limit stack 2
.end method
