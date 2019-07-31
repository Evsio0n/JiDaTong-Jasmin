.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$2
.super java/lang/Object
.implements com/nd/android/u/tast/lottery/util/LotResultDialogListener
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onResult(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L1
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokevirtual com/nd/android/u/tast/lottery/activity/LotMainActivity/onBackPressed()V
return
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokevirtual com/nd/android/u/tast/lottery/activity/LotMainActivity/onBackPressed()V
return
L2:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$002(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Z)Z
pop
return
.limit locals 2
.limit stack 2
.end method
