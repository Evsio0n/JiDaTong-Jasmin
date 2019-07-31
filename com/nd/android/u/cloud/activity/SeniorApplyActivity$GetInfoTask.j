.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
.inner class private GetInfoTask inner com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask outer com/nd/android/u/cloud/activity/SeniorApplyActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getStudentInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$502(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateOapUserInfo(Lcom/product/android/commonInterface/contact/OapUser;)V
L0:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/onPostExecute(Ljava/lang/Void;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$GetInfoTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$700(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/product/android/commonInterface/contact/OapUser;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method
