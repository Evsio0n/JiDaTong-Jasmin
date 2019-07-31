.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;

.method <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
iload 2
lookupswitch
2131625742 : L0
2131626031 : L1
2131626033 : L1
2131626660 : L2
2131626664 : L3
2131626668 : L4
2131626670 : L5
2131626671 : L6
2131626673 : L7
2131626679 : L8
2131626681 : L9
2131626683 : L10
default : L11
L11:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$500(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
return
L7:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
ldc com/nd/android/u/cloud/activity/MainAppActivity
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/goTo(Ljava/lang/Class;)V
return
L8:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
invokestatic com/nd/android/u/cloud/helper/Utils/checkUpdate(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;)V
return
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getAccount()Ljava/lang/String; 0
astore 3
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/Bind91Account
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "is_from_setting"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "account"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
aload 1
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/startActivity(Landroid/content/Intent;)V
return
L5:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/eixtSys()V
return
L10:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
ldc com/nd/android/u/cloud/activity/VersionResumeActivity
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/goTo(Ljava/lang/Class;)V
return
L6:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
ldc com/nd/android/u/ui/activity/background_setting/CommonSettingActivity
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/goTo(Ljava/lang/Class;)V
return
L9:
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/HelpUpdateActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L4:
aload 1
ldc "is_from_setting"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$600(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/app/Activity;
invokestatic com/nd/android/u/cloud/helper/Utils/clearAccountInfo(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$600(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
invokestatic com/common/android/utils/StackManager/closeActivitys()V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/clearAppList()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "has_return_btn"
iconst_0
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$600(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/app/Activity;
aload 1
new com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3$1/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$3;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
return
.limit locals 4
.limit stack 6
.end method
