.bytecode 50.0
.class synchronized com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/getListners()[Landroid/view/View$OnClickListener;
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;

.method <init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;)V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/context Landroid/content/Context;
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/text Ljava/lang/String;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
