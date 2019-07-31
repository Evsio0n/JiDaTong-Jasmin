.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/controller/NotificationMng
.super java/lang/Object

.field private static final 'NOTIFY_ID' I = 123333333


.field private static 'lastNotifyTime' Ljava/util/Date;

.field private static 'mNotificationManager' Landroid/app/NotificationManager;

.method static <clinit>()V
aconst_null
putstatic com/android/u/weibo/weibo/controller/NotificationMng/mNotificationManager Landroid/app/NotificationManager;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static clearNotify(Landroid/content/Context;)V
aload 0
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
putstatic com/android/u/weibo/weibo/controller/NotificationMng/mNotificationManager Landroid/app/NotificationManager;
getstatic com/android/u/weibo/weibo/controller/NotificationMng/mNotificationManager Landroid/app/NotificationManager;
ldc_w 123333333
invokevirtual android/app/NotificationManager/cancel(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public static showNotifyOnBar(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
aload 0
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
putstatic com/android/u/weibo/weibo/controller/NotificationMng/mNotificationManager Landroid/app/NotificationManager;
new android/app/Notification
dup
getstatic com/product/android/business/config/Configuration/NOTIFICATION_ICON I
aload 1
invokestatic java/lang/System/currentTimeMillis()J
invokespecial android/app/Notification/<init>(ILjava/lang/CharSequence;J)V
astore 3
aload 3
bipush 16
putfield android/app/Notification/flags I
new android/widget/RemoteViews
dup
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
getstatic com/android/u/weibo/R$layout/notification_view I
invokespecial android/widget/RemoteViews/<init>(Ljava/lang/String;I)V
astore 4
aload 4
getstatic com/android/u/weibo/R$id/message I
aload 1
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 4
getstatic com/android/u/weibo/R$id/progress_bar I
iconst_0
iconst_0
iconst_1
invokevirtual android/widget/RemoteViews/setProgressBar(IIIZ)V
aload 3
aload 4
putfield android/app/Notification/contentView Landroid/widget/RemoteViews;
aload 2
astore 1
aload 2
ifnonnull L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
L0:
aload 3
aload 0
iconst_0
aload 1
ldc_w 134217728
invokestatic android/app/PendingIntent/getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
putfield android/app/Notification/contentIntent Landroid/app/PendingIntent;
getstatic com/android/u/weibo/weibo/controller/NotificationMng/mNotificationManager Landroid/app/NotificationManager;
ldc_w 123333333
aload 3
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 5
.limit stack 6
.end method
