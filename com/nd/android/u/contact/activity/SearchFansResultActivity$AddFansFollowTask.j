.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddFansFollowTask inner com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask outer com/nd/android/u/contact/activity/SearchFansResultActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFansResultActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/nd/android/u/contact/activity/SearchFansResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
aload 1
iconst_0
aaload
ldc "position"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ifge L4
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
iload 2
invokevirtual com/product/android/commonInterface/weibo/IdolList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$1002(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/product/android/commonInterface/weibo/Idol;)Lcom/product/android/commonInterface/weibo/Idol;
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$AddFansFollowTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$1000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/Idol;
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/WeiboAddFollow(J)I
ifne L5
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L5:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L6:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 3
.end method
