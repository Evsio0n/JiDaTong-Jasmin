.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;>;"
.inner class private GetCommentToMeListTask inner com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask outer com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment

.field private 'isRefresh' Z

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Z)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/isRefresh Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/isRefresh Z
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewMcReplyList(Z)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 1
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertReplyTopicList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;Z)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
aload 1
ifnull L1
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifne L2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/notifyDataSetChanged()V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/no_data_now I
invokevirtual android/widget/TextView/setText(I)V
L4:
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifle L4
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfoList
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetCommentToMeListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
return
.limit locals 2
.limit stack 2
.end method
