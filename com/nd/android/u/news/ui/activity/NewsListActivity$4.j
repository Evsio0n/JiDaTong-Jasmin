.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsListActivity/afterGetMoreDatasSuccess(Ljava/util/List;)V
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.field final synthetic 'val$newsList' Ljava/util/List;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$4/val$newsList Ljava/util/List;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
iconst_1
istore 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/val$newsList Ljava/util/List;
ifnonnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/val$newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 10
if_icmpge L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$700(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_common_no_more_data I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$800(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
astore 2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/val$newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 10
if_icmpne L3
L4:
aload 2
iload 1
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/setIsFullData(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/val$newsList Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/addDatas(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/notifyDataSetChanged()V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
goto L2
L3:
iconst_0
istore 1
goto L4
.limit locals 3
.limit stack 2
.end method
