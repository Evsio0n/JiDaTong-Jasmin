.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_MultiImage/addTextView(Ljava/lang/String;)V
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
L1
default : L2
L2:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
iconst_1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_MultiImage/setPressed(Z)V
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_MultiImage/setPressed(Z)V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
