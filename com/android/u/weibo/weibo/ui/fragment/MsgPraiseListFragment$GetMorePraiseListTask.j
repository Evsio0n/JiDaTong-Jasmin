.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/PraiseList;>;"
.inner class private GetMorePraiseListTask inner com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask outer com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment

.field private 'maxId' J

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;J)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
lload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/maxId J
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/maxId J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldMcPraiseList(J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
astore 1
aload 1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertPraiseList(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 1
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L1:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
bipush 20
if_icmpge L2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)Z
pop
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ifle L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/addData(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/notifyDataSetChanged()V
goto L1
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)Z
pop
goto L3
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/PraiseList
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
return
.limit locals 2
.limit stack 2
.end method
