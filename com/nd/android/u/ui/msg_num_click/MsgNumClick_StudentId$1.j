.bytecode 50.0
.class synchronized com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;

.method <init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmple L0
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/content/ClipboardManager
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/text Ljava/lang/String;
invokevirtual android/content/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1/this$0 Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/text Ljava/lang/String;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
