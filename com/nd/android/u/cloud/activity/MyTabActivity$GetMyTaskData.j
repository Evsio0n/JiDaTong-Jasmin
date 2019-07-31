.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;>;"
.inner class private GetMyTaskData inner com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData outer com/nd/android/u/cloud/activity/MyTabActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MyTabActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/MyTabActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/MyTabActivity;Lcom/nd/android/u/cloud/activity/MyTabActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/<init>(Lcom/nd/android/u/cloud/activity/MyTabActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
invokevirtual com/nd/android/u/tast/buss/TaskModelManager/getPersonnalTaskSummary()Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;
areturn
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$000(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$000(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/isRefreshing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$000(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
aload 1
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$200(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
ifnonnull L2
L1:
ldc_w 2131493647
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$200(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
aload 1
invokevirtual com/nd/android/u/tast/experience/bean/PersonalTaskSummary/getSummary()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/setSubItemName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$200(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
aload 1
invokevirtual com/nd/android/u/tast/experience/bean/PersonalTaskSummary/getProcess()I
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/setTaskProcess(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$300(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/clearItemValueList()V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$300(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$200(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/addItemValueList(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;)V
aload 0
getfield com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/this$0 Lcom/nd/android/u/cloud/activity/MyTabActivity;
invokestatic com/nd/android/u/cloud/activity/MyTabActivity/access$300(Lcom/nd/android/u/cloud/activity/MyTabActivity;)Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/tast/experience/bean/PersonalTaskSummary
invokevirtual com/nd/android/u/cloud/activity/MyTabActivity$GetMyTaskData/onPostExecute(Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;)V
return
.limit locals 2
.limit stack 2
.end method
