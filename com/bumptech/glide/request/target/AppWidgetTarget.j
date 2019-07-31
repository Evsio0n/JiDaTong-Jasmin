.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/AppWidgetTarget
.super com/bumptech/glide/request/target/SimpleTarget
.signature "Lcom/bumptech/glide/request/target/SimpleTarget<Landroid/graphics/Bitmap;>;"

.field private final 'componentName' Landroid/content/ComponentName;

.field private final 'context' Landroid/content/Context;

.field private final 'remoteViews' Landroid/widget/RemoteViews;

.field private final 'viewId' I

.field private final 'widgetIds' [I

.method public <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V
aload 0
iload 4
iload 5
invokespecial com/bumptech/glide/request/target/SimpleTarget/<init>(II)V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Context can not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 6
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "ComponentName can not be null!"
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
putfield com/bumptech/glide/request/target/AppWidgetTarget/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/request/target/AppWidgetTarget/remoteViews Landroid/widget/RemoteViews;
aload 0
iload 3
putfield com/bumptech/glide/request/target/AppWidgetTarget/viewId I
aload 0
aload 6
putfield com/bumptech/glide/request/target/AppWidgetTarget/componentName Landroid/content/ComponentName;
aload 0
aconst_null
putfield com/bumptech/glide/request/target/AppWidgetTarget/widgetIds [I
return
.limit locals 7
.limit stack 3
.end method

.method public transient <init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V
aload 0
iload 4
iload 5
invokespecial com/bumptech/glide/request/target/SimpleTarget/<init>(II)V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Context can not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 6
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "WidgetIds can not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 6
arraylength
ifne L2
new java/lang/IllegalArgumentException
dup
ldc "WidgetIds must have length > 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 2
ifnonnull L3
new java/lang/NullPointerException
dup
ldc "RemoteViews object can not be null!"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
aload 1
putfield com/bumptech/glide/request/target/AppWidgetTarget/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/request/target/AppWidgetTarget/remoteViews Landroid/widget/RemoteViews;
aload 0
iload 3
putfield com/bumptech/glide/request/target/AppWidgetTarget/viewId I
aload 0
aload 6
putfield com/bumptech/glide/request/target/AppWidgetTarget/widgetIds [I
aload 0
aconst_null
putfield com/bumptech/glide/request/target/AppWidgetTarget/componentName Landroid/content/ComponentName;
return
.limit locals 7
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/ComponentName;)V
aload 0
aload 1
aload 2
iload 3
ldc_w -2147483648
ldc_w -2147483648
aload 4
invokespecial com/bumptech/glide/request/target/AppWidgetTarget/<init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V
return
.limit locals 5
.limit stack 7
.end method

.method public transient <init>(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
aload 0
aload 1
aload 2
iload 3
ldc_w -2147483648
ldc_w -2147483648
aload 4
invokespecial com/bumptech/glide/request/target/AppWidgetTarget/<init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V
return
.limit locals 5
.limit stack 7
.end method

.method private update()V
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/context Landroid/content/Context;
invokestatic android/appwidget/AppWidgetManager/getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
astore 1
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/componentName Landroid/content/ComponentName;
ifnull L0
aload 1
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/componentName Landroid/content/ComponentName;
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/remoteViews Landroid/widget/RemoteViews;
invokevirtual android/appwidget/AppWidgetManager/updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
return
L0:
aload 1
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/widgetIds [I
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/remoteViews Landroid/widget/RemoteViews;
invokevirtual android/appwidget/AppWidgetManager/updateAppWidget([ILandroid/widget/RemoteViews;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation<-Landroid/graphics/Bitmap;>;)V"
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/remoteViews Landroid/widget/RemoteViews;
aload 0
getfield com/bumptech/glide/request/target/AppWidgetTarget/viewId I
aload 1
invokevirtual android/widget/RemoteViews/setImageViewBitmap(ILandroid/graphics/Bitmap;)V
aload 0
invokespecial com/bumptech/glide/request/target/AppWidgetTarget/update()V
return
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
aload 0
aload 1
checkcast android/graphics/Bitmap
aload 2
invokevirtual com/bumptech/glide/request/target/AppWidgetTarget/onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
return
.limit locals 3
.limit stack 3
.end method
