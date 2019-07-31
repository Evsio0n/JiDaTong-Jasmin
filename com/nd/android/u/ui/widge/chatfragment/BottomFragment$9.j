.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment$9
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/chatfragment/BottomFragment/onActivityResult(IILandroid/content/Intent;)V
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$9
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$9$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.field final synthetic 'val$paths' Ljava/util/ArrayList;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Ljava/util/ArrayList;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$9/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$9/val$paths Ljava/util/ArrayList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$9/val$paths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/SendImageUtil/saveAndCompressBitmap(Ljava/lang/String;)Ljava/io/File;
astore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$9/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$1300(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/os/Handler;
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$9$1
dup
aload 0
aload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$9$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$9;Ljava/io/File;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
goto L0
L1:
return
.limit locals 3
.limit stack 5
.end method
