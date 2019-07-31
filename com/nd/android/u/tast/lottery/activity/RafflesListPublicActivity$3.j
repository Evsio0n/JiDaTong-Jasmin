.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mRafflesListPublic Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mRafflesListPublic Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
iconst_0
istore 3
L2:
iload 3
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mRafflesListPublic Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mRafflesListPublic Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic
astore 2
aload 1
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/access$100(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/tast/lottery/dataStructure/LotPrise
astore 5
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getRank()I
aload 5
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getRank()I
if_icmpne L3
aload 1
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
L4:
new com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/<init>(Landroid/content/Context;)V
astore 4
aload 4
aload 2
aload 1
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/init(Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/ldadd Landroid/widget/LinearLayout;
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 3
iconst_1
iadd
istore 3
goto L2
L0:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
ifnull L5
ldc "-1"
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
ldc "\u7f51\u7edc\u5f02\u5e38"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)Landroid/app/ProgressDialog;
ifnull L6
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L6:
return
L5:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
ldc "\u7f51\u7edc\u901a\u4fe1\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L1
.limit locals 6
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
ldc ""
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
getstatic com/nd/android/u/tasklib/R$string/lot_get_data_waiting I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/access$202(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method
