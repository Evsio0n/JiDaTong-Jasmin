.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$3
.super java/lang/Thread
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$3
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$3$2

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$900(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1000(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getLotResult(II)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$702(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
lconst_0
lcmp
ifne L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
bipush -2
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getErrorcode()I
sipush 409
if_icmpne L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
getstatic com/nd/android/u/tasklib/R$string/lot_pool_update I
invokevirtual com/nd/android/u/tast/lottery/activity/LotMainActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1100(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
new com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/LotMainActivity$3$1/<init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;)V
invokevirtual com/nd/android/u/tast/lottery/activity/LotMainActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getErrorcode()I
sipush 200
if_icmpne L2
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_m1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
iconst_0
istore 1
L3:
iload 1
iload 2
if_icmpge L4
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotPrise
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getCate_id()J
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getCate_id()J
lcmp
ifne L5
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iload 1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
L5:
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
new com/nd/android/u/tast/lottery/activity/LotMainActivity$3$2
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/LotMainActivity$3$2/<init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$3;)V
invokevirtual com/nd/android/u/tast/lottery/activity/LotMainActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 4
.end method
