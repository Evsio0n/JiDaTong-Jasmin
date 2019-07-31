.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/base/BaseSearchActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/base/BaseSearchActivity
.inner class inner com/nd/android/u/contact/activity/base/BaseSearchActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;

.method <init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/layoutRecommend Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/layoutRecommend Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 1
checkcast com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask
astore 1
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreflag Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
ifnonnull L3
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
L3:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
aload 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/getTempList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/isloading Z
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
astore 1
aload 1
aload 1
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/pageNo I
iconst_1
iadd
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/pageNo I
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
iconst_1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/showListView(Z)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/total I
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpeq L4
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
sipush 500
if_icmplt L5
L4:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L5:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/getTempTotal()I
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/total I
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/getTempList()Ljava/util/List;
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/contractList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/total I
ifne L6
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
iconst_0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/showListView(Z)V
return
L6:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/total I
bipush 20
if_icmple L7
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
iconst_1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/showListView(Z)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreView Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/adapter Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L7:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
iconst_1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/showListView(Z)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/getMoreflag Z
ifeq L5
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/isloading Z
return
.limit locals 3
.limit stack 3
.end method
