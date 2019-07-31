.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetPersonThirdInfoTask inner com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask outer com/android/u/weibo/contact/ui/activity/MyContact

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method private <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/android/u/weibo/contact/ui/activity/MyContact$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aconst_null
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$102(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getOapUserBaseAndExtInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$202(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lconst_0
lcmp
ifeq L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
new com/product/android/business/login/BindUser
dup
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/product/android/business/login/BindUser/<init>(Lcom/product/android/commonInterface/contact/OapUser;)V
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$102(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateBindUserHeadInfo(Lcom/product/android/business/login/BindUser;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateOapUserInfo(Lcom/product/android/commonInterface/contact/OapUser;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$GetPersonThirdInfoTask/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getstatic com/android/u/weibo/R$string/get_third_person_info_error I
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getString(I)Ljava/lang/String;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$302(Lcom/android/u/weibo/contact/ui/activity/MyContact;Ljava/lang/String;)Ljava/lang/String;
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
