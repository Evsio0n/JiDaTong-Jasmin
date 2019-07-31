.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetTopTask inner com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask outer com/android/u/weibo/flower/ui/widget/TopRankListByTimeView

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;

.method private <init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask/<init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask/this$0 Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokestatic com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/access$100(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 1
.end method
