.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoWallActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/PhotoWallActivity
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.method <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$5/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
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
aload 1
checkcast com/nd/android/u/contact/activity/PhotoWallActivity$GetNextPageTask
getfield com/nd/android/u/contact/activity/PhotoWallActivity$GetNextPageTask/list Ljava/util/ArrayList;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/util/ArrayList/size()I
ifgt L2
L1:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$5/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aconst_null
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleData(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$5/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aconst_null
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleData(Ljava/util/ArrayList;)V
L0:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$5/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$900(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)B
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$5/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 1
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleData(Ljava/util/ArrayList;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$5/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 1
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleData(Ljava/util/ArrayList;)V
return
.limit locals 3
.limit stack 2
.end method
