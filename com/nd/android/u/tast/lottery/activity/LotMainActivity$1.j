.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity/initEvent()V
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch -1
L0
L1
L2
default : L3
L3:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L4
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
iload 2
ifne L5
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
bipush 20
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
L4:
return
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$002(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
bipush -2
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L4
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$202(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$302(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_m1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
return
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$002(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
bipush -2
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L6
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$202(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$302(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_m1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
L6:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_fail_timeout I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$202(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_m1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
iconst_1
iadd
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$302(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
ifnull L7
new com/nd/android/u/tast/lottery/util/LotResultPopDialog
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;
invokespecial com/nd/android/u/tast/lottery/util/LotResultPopDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;)V
astore 1
aload 1
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/isShow()Z
ifeq L8
aload 1
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismissDialogL()V
L8:
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/setPriseData(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 1
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/showDialog()V
return
L7:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lottery_finish_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$002(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Z)Z
pop
return
L5:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iload 2
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$1/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iload 2
iconst_1
iadd
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
return
.limit locals 3
.limit stack 4
.end method
