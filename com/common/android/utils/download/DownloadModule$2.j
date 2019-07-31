.bytecode 50.0
.class synchronized com/common/android/utils/download/DownloadModule$2
.super android/os/Handler
.enclosing method com/common/android/utils/download/DownloadModule
.inner class inner com/common/android/utils/download/DownloadModule$2
.inner class inner com/common/android/utils/download/DownloadModule$2$1
.inner class inner com/common/android/utils/download/DownloadModule$2$1$1
.inner class inner com/common/android/utils/download/DownloadModule$2$2

.field final synthetic 'this$0' Lcom/common/android/utils/download/DownloadModule;

.method <init>(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
aload 1
getfield android/os/Message/what I
tableswitch 0
L3
L4
L5
L6
L7
default : L8
L8:
return
L6:
aload 1
getfield android/os/Message/arg1 I
istore 2
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$700(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/Class;
ifnonnull L9
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
invokestatic com/common/android/utils/download/DownloadModule/access$802(Lcom/common/android/utils/download/DownloadModule;Landroid/content/Intent;)Landroid/content/Intent;
pop
L10:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1000(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/start_download I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
new android/app/Notification
dup
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1200(Lcom/common/android/utils/download/DownloadModule;)I
aload 1
invokestatic java/lang/System/currentTimeMillis()J
invokespecial android/app/Notification/<init>(ILjava/lang/CharSequence;J)V
invokestatic com/common/android/utils/download/DownloadModule/access$1102(Lcom/common/android/utils/download/DownloadModule;Landroid/app/Notification;)Landroid/app/Notification;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
iconst_1
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$800(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Intent;
ldc_w 134217728
invokestatic android/app/PendingIntent/getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
invokestatic com/common/android/utils/download/DownloadModule/access$1302(Lcom/common/android/utils/download/DownloadModule;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
invokestatic com/common/android/utils/download/DownloadModule/access$1402(Lcom/common/android/utils/download/DownloadModule;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
new android/widget/RemoteViews
dup
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
getstatic com/nd/android/u/allcommon/R$layout/notification I
invokespecial android/widget/RemoteViews/<init>(Ljava/lang/String;I)V
putfield android/app/Notification/contentView Landroid/widget/RemoteViews;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iload 2
invokevirtual com/common/android/utils/download/DownloadModule/InitNotificationView(I)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1500(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1600(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1700(ILcom/common/android/utils/download/DownloadModule;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_4
invokestatic com/common/android/utils/download/DownloadModule/access$1800(Lcom/common/android/utils/download/DownloadModule;I)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_1
invokestatic com/common/android/utils/download/DownloadModule/access$1902(Lcom/common/android/utils/download/DownloadModule;Z)Z
pop
return
L9:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
new android/content/Intent
dup
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$700(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/Class;
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokestatic com/common/android/utils/download/DownloadModule/access$802(Lcom/common/android/utils/download/DownloadModule;Landroid/content/Intent;)Landroid/content/Intent;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$800(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Intent;
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
goto L10
L7:
aload 1
getfield android/os/Message/arg1 I
istore 2
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress_bar I
bipush 100
iload 2
iconst_0
invokevirtual android/widget/RemoteViews/setProgressBar(IIIZ)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1400(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2000(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
L3:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_0
invokestatic com/common/android/utils/download/DownloadModule/access$1902(Lcom/common/android/utils/download/DownloadModule;Z)Z
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_progressblock I
bipush 8
invokevirtual android/widget/RemoteViews/setViewVisibility(II)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2100(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1600(Lcom/common/android/utils/download/DownloadModule;)I
invokestatic com/common/android/utils/download/DownloadModule/access$2200(I)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 3
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc_w 335544320
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$300(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/getURIType(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
ifnonnull L11
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/canot_identify_file_type I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1400(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2000(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
L11:
aload 1
aload 3
aload 4
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
iconst_0
aload 1
iconst_0
invokestatic android/app/PendingIntent/getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
invokestatic com/common/android/utils/download/DownloadModule/access$1302(Lcom/common/android/utils/download/DownloadModule;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/click_after_download I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1300(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/PendingIntent;
putfield android/app/Notification/contentIntent Landroid/app/PendingIntent;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1000(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/download_finish I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield android/app/Notification/tickerText Ljava/lang/CharSequence;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
astore 3
aload 3
aload 3
getfield android/app/Notification/flags I
bipush 16
ior
putfield android/app/Notification/flags I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1400(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2000(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
L0:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_0
invokestatic com/common/android/utils/download/DownloadModule/access$1800(Lcom/common/android/utils/download/DownloadModule;I)V
return
L2:
astore 1
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/no_app_to_open_file I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1400(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2000(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
goto L1
L4:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2100(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1600(Lcom/common/android/utils/download/DownloadModule;)I
invokestatic com/common/android/utils/download/DownloadModule/access$2200(I)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/reload_after_download_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L13:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1900(Lcom/common/android/utils/download/DownloadModule;)Z
ifne L14
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L12:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/reload_after_download_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L13
L14:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_0
invokestatic com/common/android/utils/download/DownloadModule/access$1902(Lcom/common/android/utils/download/DownloadModule;Z)Z
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
ifnull L8
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_progressblock I
bipush 8
invokevirtual android/widget/RemoteViews/setViewVisibility(II)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
getfield android/app/Notification/contentView Landroid/widget/RemoteViews;
getstatic com/nd/android/u/allcommon/R$id/download_notification_down_progress I
aload 1
invokevirtual android/widget/RemoteViews/setTextViewText(ILjava/lang/CharSequence;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1400(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/NotificationManager;
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$2000(Lcom/common/android/utils/download/DownloadModule;)I
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$1100(Lcom/common/android/utils/download/DownloadModule;)Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_1
invokestatic com/common/android/utils/download/DownloadModule/access$1800(Lcom/common/android/utils/download/DownloadModule;I)V
return
L5:
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
iconst_0
invokestatic com/common/android/utils/download/DownloadModule/access$1902(Lcom/common/android/utils/download/DownloadModule;Z)Z
pop
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/android/u/allcommon/R$string/file_exists I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$string/your_operation I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/nd/android/u/allcommon/R$string/redownload I
new com/common/android/utils/download/DownloadModule$2$1
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$2$1/<init>(Lcom/common/android/utils/download/DownloadModule$2;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/nd/android/u/allcommon/R$string/install_now I
new com/common/android/utils/download/DownloadModule$2$2
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$2$2/<init>(Lcom/common/android/utils/download/DownloadModule$2;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 5
.limit stack 7
.end method
