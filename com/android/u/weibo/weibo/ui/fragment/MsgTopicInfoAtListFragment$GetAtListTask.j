.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;>;"
.inner class private GetAtListTask inner com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask outer com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment

.field private 'isRefresh' Z

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/isRefresh Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/isRefresh Z
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewMcAtTopicInfoList(Z)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
aload 1
ifnull L1
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/notifyDataSetChanged()V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/no_data_now I
invokevirtual android/widget/TextView/setText(I)V
L4:
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifle L4
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
return
.limit locals 2
.limit stack 2
.end method
