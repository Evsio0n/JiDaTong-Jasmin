.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/registEvent()V
.inner class inner com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;

.method <init>(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/isEmpty()Z
ifeq L0
return
L0:
iload 2
tableswitch 0
L1
L2
L3
default : L4
L4:
return
L1:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
putfield android/os/Message/obj Ljava/lang/Object;
aload 3
iconst_3
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L2:
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/access$000(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)Landroid/text/ClipboardManager;
ifnonnull L5
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/access$100(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)Landroid/content/Context;
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
invokestatic com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/access$002(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;Landroid/text/ClipboardManager;)Landroid/text/ClipboardManager;
pop
L5:
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/access$000(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)Landroid/text/ClipboardManager;
astore 4
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
ifnull L6
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/getMsg()Ljava/lang/String;
astore 3
L7:
aload 4
aload 3
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L6:
ldc ""
astore 3
goto L7
L3:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
putfield android/os/Message/obj Ljava/lang/Object;
aload 3
iconst_4
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/handler Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 5
.limit stack 3
.end method
