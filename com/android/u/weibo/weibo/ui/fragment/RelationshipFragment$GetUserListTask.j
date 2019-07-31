.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;>;"
.inner class private GetUserListTask inner com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask outer com/android/u/weibo/weibo/ui/fragment/RelationshipFragment

.field private 'manager' Lcom/android/u/weibo/weibo/controller/NdWeiboManager;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;

.field private 'type' I

.field private 'uid' J

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;Landroid/content/Context;JI)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 2
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/manager Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
lload 3
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/uid J
aload 0
iload 5
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/type I
return
.limit locals 6
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
.signature "([Ljava/lang/Void;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/manager Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/type I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/uid J
bipush 20
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
iconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getAttentionListFromNet(IJIII)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/ArrayList
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/onPostExecute(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$000(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
ldc "RelationshipFragment"
ldc "onRefreshComplete"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
bipush 20
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$000(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
L0:
aload 1
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
iconst_1
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)V
L2:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic java/lang/System/currentTimeMillis()J
ldc_w 524305
invokestatic android/text/format/DateUtils/formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$000(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V 1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$300(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$500(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter;
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/notifyDataSetChanged()V
ldc "RelationshipFragment"
ldc "notifyDataSetChanged"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$108(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
pop
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
iconst_1
if_icmple L4
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
goto L4
.limit locals 2
.limit stack 4
.end method

.method protected onPreExecute()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$000(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aconst_null
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$100(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)I
iconst_1
if_icmple L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$GetUserListTask/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$200(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
