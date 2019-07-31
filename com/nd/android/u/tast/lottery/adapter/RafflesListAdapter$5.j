.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/lottery/adapter/RafflesListAdapter
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;

.method <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$500(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$500(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
ifnull L1
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData
astore 1
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
if_icmplt L2
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_get_error_para I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/type I
iconst_1
if_icmpne L3
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getItem(I)Lcom/product/android/commonInterface/task/Raffles;
astore 1
aload 1
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
iconst_1
if_icmpne L4
aload 1
iconst_0
invokevirtual com/product/android/commonInterface/task/Raffles/setPrize_status(I)V
L5:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_get_prise_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
L4:
aload 1
iconst_1
invokevirtual com/product/android/commonInterface/task/Raffles/setPrize_status(I)V
goto L5
L3:
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/type I
iconst_2
if_icmpne L6
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_his_delete_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
invokevirtual com/product/android/commonInterface/task/RafflesList/remove(I)Ljava/lang/Object;
pop
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/disCheck(I)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/notifyDataSetChanged()V
return
L6:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_get_error_para I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L7
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
ifnull L7
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 1
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/message Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
L7:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
ifnull L8
ldc "-1"
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
ldc "\u7f51\u7edc\u5f02\u5e38"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L8:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
ldc "\u7f51\u7edc\u901a\u4fe1\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
ldc ""
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_process_waiting I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$502(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$500(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method
