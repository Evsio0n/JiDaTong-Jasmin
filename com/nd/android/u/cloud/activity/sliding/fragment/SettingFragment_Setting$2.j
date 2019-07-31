.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2
.super com/common/android/utils/task/progressTask/ProgressTask
.enclosing method com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/bindedWeibo()V
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;

.field 'token' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.method <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
new com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx
dup
invokespecial com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/<init>()V
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$100(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
return
.limit locals 2
.limit stack 1
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboToken()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setToken(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboUID()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setSinaUid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getExpireTime()J
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setExpiresTime(J)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getNickName()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setNickName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setRefreshToken(Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/isSessionValid()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$400(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboUID()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokevirtual com/android/u/weibo/weibo/controller/Manager/setSinaUid(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;J)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L1:
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$2/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
return
.limit locals 1
.limit stack 0
.end method
