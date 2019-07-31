.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2/run()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1/this$1 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1/this$1 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2;
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2/val$onSucess Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1/this$1 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2;
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2/val$onSucess Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1/this$1 Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2;
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2/val$d Landroid/graphics/drawable/Drawable;
invokeinterface com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess/OnGetSucess(Landroid/graphics/drawable/Drawable;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method
