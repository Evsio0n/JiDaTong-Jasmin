.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/NotificationTarget
.super com/bumptech/glide/request/target/SimpleTarget
.signature "Lcom/bumptech/glide/request/target/SimpleTarget<Landroid/graphics/Bitmap;>;"

.field private final 'context' Landroid/content/Context;

.field private final 'notification' Landroid/app/Notification;

.field private final 'notificationId' I

.field private final 'remoteViews' Landroid/widget/RemoteViews;

.field private final 'viewId' I

.method public <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V
aload 0
iload 4
iload 5
invokespecial com/bumptech/glide/request/target/SimpleTarget/<init>(II)V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Context must not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 6
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "Notification object can not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 2
ifnonnull L2
new java/lang/NullPointerException
dup
ldc "RemoteViews object can not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
aload 1
putfield com/bumptech/glide/request/target/NotificationTarget/context Landroid/content/Context;
aload 0
iload 3
putfield com/bumptech/glide/request/target/NotificationTarget/viewId I
aload 0
aload 6
putfield com/bumptech/glide/request/target/NotificationTarget/notification Landroid/app/Notification;
aload 0
iload 7
putfield com/bumptech/glide/request/target/NotificationTarget/notificationId I
aload 0
aload 2
putfield com/bumptech/glide/request/target/NotificationTarget/remoteViews Landroid/widget/RemoteViews;
return
.limit locals 8
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/app/Notification;I)V
aload 0
aload 1
aload 2
iload 3
ldc_w -2147483648
ldc_w -2147483648
aload 4
iload 5
invokespecial com/bumptech/glide/request/target/NotificationTarget/<init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V
return
.limit locals 6
.limit stack 8
.end method

.method private update()V
aload 0
getfield com/bumptech/glide/request/target/NotificationTarget/context Landroid/content/Context;
ldc "notification"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/NotificationManager
aload 0
getfield com/bumptech/glide/request/target/NotificationTarget/notificationId I
aload 0
getfield com/bumptech/glide/request/target/NotificationTarget/notification Landroid/app/Notification;
invokevirtual android/app/NotificationManager/notify(ILandroid/app/Notification;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;)V"
aload 0
getfield com/bumptech/glide/request/target/NotificationTarget/remoteViews Landroid/widget/RemoteViews;
aload 0
getfield com/bumptech/glide/request/target/NotificationTarget/viewId I
aload 1
invokevirtual android/widget/RemoteViews/setImageViewBitmap(ILandroid/graphics/Bitmap;)V
aload 0
invokespecial com/bumptech/glide/request/target/NotificationTarget/update()V
return
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
aload 0
aload 1
checkcast android/graphics/Bitmap
aload 2
invokevirtual com/bumptech/glide/request/target/NotificationTarget/onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
return
.limit locals 3
.limit stack 3
.end method
