.bytecode 50.0
.class synchronized com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/showMenuDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Landroid/view/View$OnClickListener;)V
.inner class inner com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;

.field final synthetic 'val$listners' [Landroid/view/View$OnClickListener;

.field final synthetic 'val$view' Landroid/view/View;

.method <init>(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;[Landroid/view/View$OnClickListener;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/this$0 Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;
aload 0
aload 2
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/val$listners [Landroid/view/View$OnClickListener;
aload 0
aload 3
putfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/val$view Landroid/view/View;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/val$listners [Landroid/view/View$OnClickListener;
iconst_2
aaload
astore 1
aload 1
ifnull L0
aload 1
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/val$view Landroid/view/View;
invokeinterface android/view/View$OnClickListener/onClick(Landroid/view/View;)V 1
L0:
aload 0
getfield com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick$4/this$0 Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;
invokestatic com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/access$000(Lcom/nd/android/u/ui/msg_num_click/AbstractMsgNumClick;)Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
return
.limit locals 2
.limit stack 2
.end method
