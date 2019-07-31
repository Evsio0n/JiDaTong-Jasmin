.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/synchronizedSetDrawable(Landroid/content/Context;Landroid/os/Handler;JIILcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;

.field final synthetic 'val$context' Landroid/content/Context;

.field final synthetic 'val$handler' Landroid/os/Handler;

.field final synthetic 'val$height' I

.field final synthetic 'val$id' J

.field final synthetic 'val$onSucess' Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;

.field final synthetic 'val$width' I

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;Landroid/content/Context;JIILandroid/os/Handler;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$context Landroid/content/Context;
aload 0
lload 3
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$id J
aload 0
iload 5
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$width I
aload 0
iload 6
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$height I
aload 0
aload 7
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$handler Landroid/os/Handler;
aload 0
aload 8
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$onSucess Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 9
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$context Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$id J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$width I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$height I
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/BitmapUtil/getImageThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
astore 1
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$id J
aload 1
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/putCache(JLandroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$handler Landroid/os/Handler;
aload 1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/val$onSucess Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;Landroid/os/Handler;Landroid/graphics/drawable/Drawable;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
return
.limit locals 2
.limit stack 4
.end method
