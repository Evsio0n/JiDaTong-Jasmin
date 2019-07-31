.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2$1
.super java/lang/Object
.implements android/app/TimePickerDialog$OnTimeSetListener
.enclosing method com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2
.inner class inner com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2;

.method <init>(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2$1/this$1 Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getCommonconfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
astore 1
aload 0
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2$1/this$1 Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2;
getfield com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity/access$100(Lcom/nd/android/u/ui/activity/background_setting/ReceiveMsgPeriodActivity;)Landroid/widget/TextView;
iload 2
iload 3
invokestatic com/product/android/utils/TimeUtils/getHourMinute(II)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
iload 2
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setReceiveend_hour(I)V
aload 1
iload 3
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/setReceiveend_minute(I)V
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/getCommonSettingConfigDao()Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao;
aload 1
invokevirtual com/nd/android/u/business/db/dao/CommonSettingConfigDao/insertCommonSettingConfig(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)J
pop2
return
.limit locals 4
.limit stack 3
.end method
