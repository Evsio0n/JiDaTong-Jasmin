.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;>;"
.inner class private GetFriendTask inner com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask outer com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/<init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
L0:
new com/android/u/weibo/weibo/business/comm/NdRelationSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdRelationSdk/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getRecommend(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/doInBackground([Ljava/lang/Void;)Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;)V
aload 1
ifnull L0
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/RecommendInfoList/size()I
ifle L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$400(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$500(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/setCircleList(Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$500(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/notifyDataSetChanged()V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/TextView;
ldc_w 2131493659
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$300(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
ifnonnull L1
ldc_w 2131493647
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/RecommendInfoList
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$300(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/access$400(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 2
.end method
