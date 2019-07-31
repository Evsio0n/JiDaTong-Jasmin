.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener
.super com/common/android/utils/task/genericTask/TaskAdapter
.inner class private TopTaskListener inner com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener outer com/android/u/weibo/flower/ui/widget/TopRankListByTimeView

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;

.method private <init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/<init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
iconst_0
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$402(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Z)Z
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
iconst_0
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$302(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Z)Z
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$200(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
ifne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$500(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L1:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L2
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
ifnull L3
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$200(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
ifne L4
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$700(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$800(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/os/Handler;
ifnull L4
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$800(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$900(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
ifne L5
aload 3
sipush 200
putfield android/os/Message/what I
L6:
aload 3
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTotalFlower I
putfield android/os/Message/arg1 I
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$800(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L4:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$700(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L3:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/showData()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$204(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
pop
L7:
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$600(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L1
L5:
aload 3
sipush 300
putfield android/os/Message/what I
goto L6
L2:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$200(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
ifne L8
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$500(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$1000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$1100(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$1000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/get_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L8:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/get_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L7
.limit locals 4
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$200(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
ifne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
iconst_1
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$302(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Z)Z
pop
L1:
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
iconst_1
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$402(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Z)Z
pop
goto L1
.limit locals 2
.limit stack 2
.end method
