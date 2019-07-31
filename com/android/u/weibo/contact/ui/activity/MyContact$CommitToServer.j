.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private CommitToServer inner com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer outer com/android/u/weibo/contact/ui/activity/MyContact

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method private <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;Lcom/android/u/weibo/contact/ui/activity/MyContact$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/<init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
iconst_0
aaload
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ifne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
ifne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedNativePlace Z
ifne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
ifne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
ifne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedPermission Z
ifeq L7
L6:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lorg/json/JSONObject;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/modifyOapUserBaseAndExtInfo(Lorg/json/JSONObject;)Z
ifne L7
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L7:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ifeq L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lorg/json/JSONObject;
ldc "signature"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/modifyStaffSignature(Ljava/lang/String;)Z
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
ifeq L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 1
ldc "param_sign"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedBirth Z
ifeq L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 1
ldc "param_birthday"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setBirthday(Ljava/lang/String;)V
L3:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedMobilePhone Z
ifeq L4
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 1
ldc "param_mobile_phone"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
L4:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedEmail Z
ifeq L5
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 1
ldc "param_email"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setEmail(Ljava/lang/String;)V
L5:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedWeibo Z
ifeq L8
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2000(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L9
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
ifnull L9
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2000(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboUID()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokevirtual com/android/u/weibo/weibo/controller/Manager/setSinaUid(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;J)Z
ifeq L10
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2000(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
L8:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateBindUserHeadInfo(Lcom/product/android/business/login/BindUser;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L10:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L9:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aconst_null
lconst_0
invokevirtual com/android/u/weibo/weibo/controller/Manager/setSinaUid(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;J)Z
ifeq L11
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$CommitToServer/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/deleteOauth2AccessToken(Landroid/content/Context;)V
goto L8
L11:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
