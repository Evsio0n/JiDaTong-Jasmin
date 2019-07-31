.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;>;"
.inner class private GetFriendTask inner com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask outer com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/<init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/doInBackground([Ljava/lang/Void;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/List;
.signature "([Ljava/lang/Void;)Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;"
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
bipush 20
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$800(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)I
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getRecommend(II)Ljava/util/List;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;)V"
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$300(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$600(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$702(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Z)Z
pop
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$400(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$800(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/setRecommendList(Ljava/util/List;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$804(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)I
pop
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmplt L3
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$902(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Z)Z
pop
L4:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/getCount()I
ifne L5
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/TextView;
ldc_w 2131493660
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$500(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L6:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/addRecommendList(Ljava/util/List;)V
goto L2
L3:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$902(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Z)Z
pop
goto L4
L0:
ldc_w 2131493647
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L4
L5:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/notifyDataSetChanged()V
goto L6
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/getCount()I
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$300(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$400(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$500(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$702(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Z)Z
pop
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/this$0 Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;
invokestatic com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/access$600(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 2
.end method
