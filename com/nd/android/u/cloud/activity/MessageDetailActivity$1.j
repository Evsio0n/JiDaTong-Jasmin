.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageDetailActivity$1
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/cloud/activity/MessageDetailActivity
.inner class inner com/nd/android/u/cloud/activity/MessageDetailActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageDetailActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageDetailActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
new com/nd/android/u/cloud/ui/dialog/CopyTextDialog
dup
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$1/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
invokestatic com/nd/android/u/cloud/activity/MessageDetailActivity/access$000(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial com/nd/android/u/cloud/ui/dialog/CopyTextDialog/<init>(Landroid/content/Context;Ljava/lang/String;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/CopyTextDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method
