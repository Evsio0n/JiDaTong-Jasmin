.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchGroupResultActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SearchGroupResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchGroupResultActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/isAddFootView Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$500(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$400(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
iconst_0
putfield com/nd/android/u/contact/activity/SearchGroupResultActivity/isAddFootView Z
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$600(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;)V
return
L1:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "404"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_nothing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$700(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$700(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity/show Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupResultActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchGroupResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_search I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchGroupResultActivity/access$800(Lcom/nd/android/u/contact/activity/SearchGroupResultActivity;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method
