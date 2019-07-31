.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSchoolListActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYSchoolListActivity
.inner class inner com/nd/android/u/contact/activity/XYSchoolListActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSchoolListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
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
checkcast com/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$500(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$202(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$608(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$400(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$700(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$700(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
sipush 500
if_icmplt L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$900(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$800(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity$SearchUserTask/getTempTotal()I
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$402(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$400(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)I
ifgt L4
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$1000(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$1100(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$900(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$1300(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/no_aboat_conatct I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$1200(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
getfield com/nd/android/u/contact/activity/XYSchoolListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokevirtual com/nd/android/u/contact/activity/XYSchoolListActivity/showListView()V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$400(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)I
bipush 20
if_icmple L3
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$900(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$800(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$900(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$300(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$500(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/activity/XYSchoolListActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSchoolListActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSchoolListActivity/access$202(Lcom/nd/android/u/contact/activity/XYSchoolListActivity;Z)Z
pop
return
.limit locals 3
.limit stack 6
.end method
