.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4
.super com/common/android/utils/task/progressTask/ProgressTask
.enclosing method com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/controlWeibo()V
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;

.method <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
ldc_w 2131493493
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 2
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aconst_null
lconst_0
invokevirtual com/android/u/weibo/weibo/controller/Manager/setSinaUid(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;J)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/deleteOauth2AccessToken(Landroid/content/Context;)V
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
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
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$4/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
return
.limit locals 1
.limit stack 0
.end method
