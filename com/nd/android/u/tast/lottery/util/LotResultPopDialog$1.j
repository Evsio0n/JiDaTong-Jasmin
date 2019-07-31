.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/util/LotResultPopDialog$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/util/LotResultPopDialog
.inner class inner com/nd/android/u/tast/lottery/util/LotResultPopDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;

.method <init>(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/btn_get_prise I
if_icmpne L0
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$000(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getFlag()I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
iconst_0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/startGetPrise(Z)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$000(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getFlag()I
iconst_2
if_icmpne L3
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
pop
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$100(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Landroid/content/Context;
ldc com/nd/android/u/tast/experience/activity/ReceiveExpActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$100(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismissDialogL()V
return
L3:
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$100(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$100(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_get_prise_already_get I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokestatic com/nd/android/u/tast/lottery/util/LotResultPopDialog/access$000(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismissDialogL()V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/btn_sell I
if_icmpne L2
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/this$0 Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;
iconst_1
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/startGetPrise(Z)V
return
.limit locals 2
.limit stack 4
.end method
