.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetThirdPersonInfoTask inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask outer com/android/u/weibo/contact/ui/activity/SchoolMateContact

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;

.method private <init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/<init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$200(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getOapUserBaseAndExtInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$102(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$100(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$100(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateOapUserInfo(Lcom/product/android/commonInterface/contact/OapUser;)V
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$200(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getRelationWithOther(J)I
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$302(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;I)I
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
L3:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$GetThirdPersonInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
getstatic com/android/u/weibo/R$string/get_third_person_info_error I
invokevirtual com/android/u/weibo/contact/ui/activity/SchoolMateContact/getString(I)Ljava/lang/String;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$402(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;Ljava/lang/String;)Ljava/lang/String;
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
