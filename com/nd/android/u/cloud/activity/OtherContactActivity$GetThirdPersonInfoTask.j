.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected GetThirdPersonInfoTask inner com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask outer com/nd/android/u/cloud/activity/OtherContactActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/OtherContactActivity;

.method protected <init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$000(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_2
if_icmpne L3
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)J
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getStudentInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$102(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
L4:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L5
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateOapUserInfo(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
L0:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getRelationWithOther(J)I
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$302(Lcom/nd/android/u/cloud/activity/OtherContactActivity;I)I
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$102(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
goto L4
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
L5:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$GetThirdPersonInfoTask/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
ldc_w 2131493740
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$402(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Ljava/lang/String;)Ljava/lang/String;
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
