.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFansResultActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFansResultActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$300(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/onSearchSuccess()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$300(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_search_result I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$400(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
