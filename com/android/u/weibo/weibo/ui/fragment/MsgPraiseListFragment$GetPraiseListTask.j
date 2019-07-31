.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/PraiseList;>;"
.inner class private GetPraiseListTask inner com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask outer com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment

.field private 'isReFresh' Z

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/isReFresh Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/isReFresh Z
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewMcPraiseList(Z)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
astore 1
aload 1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertPraiseList(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
aload 1
ifnull L1
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ifne L2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/notifyDataSetChanged()V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/no_data_now I
invokevirtual android/widget/TextView/setText(I)V
L4:
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ifle L4
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/PraiseList
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
return
.limit locals 2
.limit stack 2
.end method
