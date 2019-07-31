.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$TopTaskListener
.super com/common/android/utils/task/genericTask/TaskAdapter
.inner class private TopTaskListener inner com/product/android/ui/widget/TopRankView$TopTaskListener outer com/product/android/ui/widget/TopRankView

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method private <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/product/android/ui/widget/TopRankView;Lcom/product/android/ui/widget/TopRankView$1;)V
aload 0
aload 1
invokespecial com/product/android/ui/widget/TopRankView$TopTaskListener/<init>(Lcom/product/android/ui/widget/TopRankView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
iconst_0
invokestatic com/product/android/ui/widget/TopRankView/access$502(Lcom/product/android/ui/widget/TopRankView;Z)Z
pop
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
iconst_0
invokestatic com/product/android/ui/widget/TopRankView/access$402(Lcom/product/android/ui/widget/TopRankView;Z)Z
pop
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$300(Lcom/product/android/ui/widget/TopRankView;)I
ifne L0
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$600(Lcom/product/android/ui/widget/TopRankView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$700(Lcom/product/android/ui/widget/TopRankView;)Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L1
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$700(Lcom/product/android/ui/widget/TopRankView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L1:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L2
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
getfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
ifnull L3
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$300(Lcom/product/android/ui/widget/TopRankView;)I
ifne L4
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$800(Lcom/product/android/ui/widget/TopRankView;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$900(Lcom/product/android/ui/widget/TopRankView;)Landroid/os/Handler;
ifnull L4
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$900(Lcom/product/android/ui/widget/TopRankView;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 4
aload 4
sipush 200
putfield android/os/Message/what I
aload 4
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
getfield com/product/android/ui/widget/TopRankView/mTotalFlower I
putfield android/os/Message/arg1 I
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$900(Lcom/product/android/ui/widget/TopRankView;)Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L4:
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
getfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L3
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$800(Lcom/product/android/ui/widget/TopRankView;)Ljava/util/ArrayList;
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
getfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$1000(Lcom/product/android/ui/widget/TopRankView;)Lcom/product/android/ui/adapter/TopRankListViewAdapter;
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$800(Lcom/product/android/ui/widget/TopRankView;)Ljava/util/ArrayList;
invokevirtual com/product/android/ui/adapter/TopRankListViewAdapter/setRankInfos(Ljava/util/List;)V
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$1000(Lcom/product/android/ui/widget/TopRankView;)Lcom/product/android/ui/adapter/TopRankListViewAdapter;
invokevirtual com/product/android/ui/adapter/TopRankListViewAdapter/notifyDataSetChanged()V
L3:
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokevirtual com/product/android/ui/widget/TopRankView/showData()V
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$304(Lcom/product/android/ui/widget/TopRankView;)I
pop
L5:
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
L2:
getstatic com/nd/android/u/allcommon/R$string/get_fail I
istore 3
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$1100(Lcom/product/android/ui/widget/TopRankView;)Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L6
getstatic com/nd/android/u/allcommon/R$string/network_error I
istore 3
L6:
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$300(Lcom/product/android/ui/widget/TopRankView;)I
ifne L7
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$1200(Lcom/product/android/ui/widget/TopRankView;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L7:
iload 3
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L5
.limit locals 5
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$300(Lcom/product/android/ui/widget/TopRankView;)I
ifne L0
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
iconst_1
invokestatic com/product/android/ui/widget/TopRankView/access$402(Lcom/product/android/ui/widget/TopRankView;Z)Z
pop
L1:
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView$TopTaskListener/this$0 Lcom/product/android/ui/widget/TopRankView;
iconst_1
invokestatic com/product/android/ui/widget/TopRankView/access$502(Lcom/product/android/ui/widget/TopRankView;Z)Z
pop
goto L1
.limit locals 2
.limit stack 2
.end method
