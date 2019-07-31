.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity$3/run()V
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$3
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1

.field final synthetic 'this$1' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1/this$1 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1/this$1 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1/this$1 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method
