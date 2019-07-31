.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYNewSearchGroupActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1300(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1500(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_search_no_result_content I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1600(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/show Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_search I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1700(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1800(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
new com/nd/android/u/contact/adapter/SearchGroupAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1000(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SearchGroupAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1802(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1300(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1800(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1300(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 5
.end method
