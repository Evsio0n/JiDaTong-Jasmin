.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;>;"
.inner class private GetMoreCommentToMeListTask inner com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask outer com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment

.field private 'maxId' J

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;J)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
lload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/maxId J
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Z)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/maxId J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldMcReplyList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 1
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertReplyTopicList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;Z)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
bipush 20
if_icmpge L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Z)Z
pop
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifle L2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/addData(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/notifyDataSetChanged()V
L2:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment;Z)Z
pop
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfoList
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCommentListFragment$GetMoreCommentToMeListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
return
.limit locals 2
.limit stack 2
.end method
