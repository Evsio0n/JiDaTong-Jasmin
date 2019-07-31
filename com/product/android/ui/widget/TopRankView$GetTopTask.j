.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$GetTopTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetTopTask inner com/product/android/ui/widget/TopRankView$GetTopTask outer com/product/android/ui/widget/TopRankView

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method private <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$GetTopTask/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/product/android/ui/widget/TopRankView;Lcom/product/android/ui/widget/TopRankView$1;)V
aload 0
aload 1
invokespecial com/product/android/ui/widget/TopRankView$GetTopTask/<init>(Lcom/product/android/ui/widget/TopRankView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/product/android/ui/widget/TopRankView$GetTopTask/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$200(Lcom/product/android/ui/widget/TopRankView;)Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 1
.end method
