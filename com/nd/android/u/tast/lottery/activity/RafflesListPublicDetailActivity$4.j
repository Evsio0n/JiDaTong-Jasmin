.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/temMap Ljava/util/HashMap;
ifnull L2
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/temMap Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifle L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/temMap Ljava/util/HashMap;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;Ljava/util/HashMap;)Ljava/util/List;
astore 1
aload 1
ifnull L2
aload 1
invokeinterface java/util/List/size()I 0
ifle L2
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 1
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$202(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter;
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/temMap Ljava/util/HashMap;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$300(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;Ljava/util/HashMap;)Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/Prize
getfield com/nd/android/u/tast/lottery/dataStructure/Prize/lotUserData Ljava/util/List;
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$402(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$900(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$400(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter;
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/setAdapter(Landroid/widget/ListAdapter;)V
L2:
return
L1:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
ifnull L3
ldc "-1"
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
ldc "\u7f51\u7edc\u5f02\u5e38"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
ldc "\u7f51\u7edc\u901a\u4fe1\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 6
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
ldc ""
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getstatic com/nd/android/u/tasklib/R$string/lot_get_data_waiting I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$802(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$4/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method
