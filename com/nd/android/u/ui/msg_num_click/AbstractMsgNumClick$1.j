.bytecode 50.0
.class synchronized com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/showMenuDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Landroid/view/View$OnClickListener;)V
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;

.method <init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;)V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1/this$0 Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$1/this$0 Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;
invokestatic com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/access$000(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;)Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
