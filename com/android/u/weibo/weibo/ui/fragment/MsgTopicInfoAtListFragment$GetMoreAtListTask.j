.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;>;"
.inner class private GetMoreAtListTask inner com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask outer com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment

.field private 'maxId' J

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;J)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
lload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/maxId J
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)Z
pop
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/maxId J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldMcAtTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 1
ifnull L0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
bipush 20
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)Z
pop
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifle L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/addTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/notifyDataSetChanged()V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)Z
pop
goto L2
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
return
.limit locals 2
.limit stack 2
.end method
