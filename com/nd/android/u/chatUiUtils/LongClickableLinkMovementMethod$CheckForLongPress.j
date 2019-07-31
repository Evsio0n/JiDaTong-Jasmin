.bytecode 50.0
.class synchronized com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress
.super java/lang/Object
.implements java/lang/Runnable
.inner class CheckForLongPress inner com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress outer com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod

.field final synthetic 'this$0' Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;

.field 'widget' Landroid/view/View;

.method public <init>(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/this$0 Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/widget Landroid/view/View;
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/this$0 Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;
invokestatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/access$000(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;)Z
ifeq L0
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/this$0 Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/widget Landroid/view/View;
invokestatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/access$100(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;Landroid/view/View;)V
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/this$0 Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;
iconst_1
invokestatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/access$202(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
