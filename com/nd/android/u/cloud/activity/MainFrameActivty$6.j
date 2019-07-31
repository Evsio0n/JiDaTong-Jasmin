.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$6
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty/onReceiverNewContact(I)V
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$6

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.field final synthetic 'val$newContact' I

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$6/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/MainFrameActivty$6/val$newContact I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$6/val$newContact I
ifle L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$6/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/showMsgCount()V
L0:
return
.limit locals 1
.limit stack 1
.end method
