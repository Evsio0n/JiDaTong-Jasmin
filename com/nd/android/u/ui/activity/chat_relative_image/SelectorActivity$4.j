.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/loadData()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$400(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/content/Context;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/PhotoUtil/loadImageData(Landroid/content/Context;)Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$100(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method
