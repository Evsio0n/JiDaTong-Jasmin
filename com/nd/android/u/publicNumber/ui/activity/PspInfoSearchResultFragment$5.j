.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IRequstResultObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRequstResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/isFinishing()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getChildCount()I
istore 5
iconst_0
istore 1
L2:
iload 1
iload 5
if_icmpge L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getChildAt(I)Landroid/view/View;
astore 3
aload 3
getstatic com/nd/android/u/chat/R$id/logo_imgv I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
astore 6
aload 6
instanceof java/lang/String
ifeq L3
aload 6
checkcast java/lang/String
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1
dup
aload 0
aload 4
aload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5;Ljava/lang/String;Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder;)V
invokevirtual android/support/v4/app/FragmentActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 7
.limit stack 6
.end method
