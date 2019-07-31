.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;

.method <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch -2
L0
L1
L2
L3
L4
default : L5
L5:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
ldc_w 2131493043
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L5
L1:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$100(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
goto L5
L2:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$200(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
goto L5
L3:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$300(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)V
goto L5
L4:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting/access$000(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_Setting;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
pop
goto L5
.limit locals 2
.limit stack 3
.end method
