.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/context Landroid/content/Context;
checkcast com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/cameraClick()V
return
.limit locals 2
.limit stack 1
.end method
