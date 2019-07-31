.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/MessageRecordsView$1
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/cloud/view/widge/MessageRecordsView
.inner class inner com/nd/android/u/cloud/view/widge/MessageRecordsView$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;

.method <init>(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView$1/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$1/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$000(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isShown()Z
ifne L0
new com/nd/android/u/cloud/ui/dialog/NoteRecordDialog
dup
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$1/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$100(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$1/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$1/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$300(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/os/Handler;
invokespecial com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/MessageInfo;Landroid/os/Handler;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method
