.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/get_fail_network_error I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/searchKey Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
if_acmpeq L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
getstatic com/nd/android/u/chat/R$string/search_no_result I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/lang/String;)V
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1002(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1200(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L4
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof java/util/List
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
astore 1
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$102(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Z)Z
pop
L6:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
ifnonnull L7
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1502(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L8:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/setPspList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L9
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
return
L5:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1408(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)I
pop
goto L6
L7:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Z
ifeq L8
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
goto L8
L9:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
getstatic com/nd/android/u/chat/R$string/search_no_result I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
return
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
getstatic com/nd/android/u/chat/R$string/search_no_result I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
return
.limit locals 3
.limit stack 7
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aconst_null
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
getstatic com/nd/android/u/chat/R$string/searching_now I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 4
.end method
