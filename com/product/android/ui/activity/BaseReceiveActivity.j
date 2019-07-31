.bytecode 50.0
.class public synchronized com/product/android/ui/activity/BaseReceiveActivity
.super android/support/v4/app/FragmentActivity
.implements com/product/android/business/service/ReceiveCallback

.field protected 'baseMsgBroadCastReceiver' Lcom/product/android/business/service/BaseMsgBroadCastReceiver;

.field protected 'registerBroadCast' Z

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
aconst_null
putfield com/product/android/ui/activity/BaseReceiveActivity/baseMsgBroadCastReceiver Lcom/product/android/business/service/BaseMsgBroadCastReceiver;
aload 0
iconst_0
putfield com/product/android/ui/activity/BaseReceiveActivity/registerBroadCast Z
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_119()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_12000()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_12000(Ljava/lang/String;)V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_12000()V
return
.limit locals 2
.limit stack 1
.end method

.method public handler_CMD_16()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_30010()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_30011()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_31()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_33()V
aload 0
invokestatic com/product/android/utils/UserIdentityDialog/dialogForceOffline(Landroid/app/Activity;)V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_36864()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_39()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_49156(Landroid/os/Bundle;)V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
return
.limit locals 2
.limit stack 1
.end method

.method public handler_CMD_51()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_53()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_5502()V
aload 0
invokestatic com/product/android/utils/UserIdentityDialog/dialogIdentityExpired(Landroid/app/Activity;)V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_635()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_85674()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_89()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_GETAPPINFO()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_GROUP_MEMBER_REFRESH()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 1
ldc "str"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "str"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED(Ljava/lang/String;)V
return
L0:
aload 0
ldc ""
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method public handler_CMD_MyStatus()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_x20004()V
return
.limit locals 2
.limit stack 1
.end method

.method public handler_CMD_SHOWLEFT()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_SHOWRIGHT()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_Suggest()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_UserStatus()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_x20000()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_x20002()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_x20003()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_x20004()V
return
.limit locals 1
.limit stack 0
.end method

.method public handler_CMD_x20005()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onPause()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onPause()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/unRegisterReceiverBroad()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onResume()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/registerReceiverBroad()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_MyStatus()V
aload 0
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/handler_CMD_UserStatus()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/isForceOffline Z
ifeq L0
aload 0
invokestatic com/product/android/utils/UserIdentityDialog/dialogForceOffline(Landroid/app/Activity;)V
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
ifeq L1
aload 0
invokestatic com/product/android/utils/UserIdentityDialog/dialogIdentityExpired(Landroid/app/Activity;)V
L1:
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
invokevirtual com/common/android/ui/gif/GifCacheManager/deActive()V
return
.limit locals 1
.limit stack 1
.end method

.method protected registerReceiverBroad()V
aload 0
getfield com/product/android/ui/activity/BaseReceiveActivity/registerBroadCast Z
ifne L0
aload 0
new com/product/android/business/service/BaseMsgBroadCastReceiver
dup
aload 0
aload 0
invokespecial com/product/android/business/service/BaseMsgBroadCastReceiver/<init>(Lcom/product/android/business/service/ReceiveCallback;Landroid/content/Context;)V
putfield com/product/android/ui/activity/BaseReceiveActivity/baseMsgBroadCastReceiver Lcom/product/android/business/service/BaseMsgBroadCastReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".msg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/product/android/ui/activity/BaseReceiveActivity/baseMsgBroadCastReceiver Lcom/product/android/business/service/BaseMsgBroadCastReceiver;
aload 1
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
iconst_1
putfield com/product/android/ui/activity/BaseReceiveActivity/registerBroadCast Z
L0:
return
.limit locals 2
.limit stack 5
.end method

.method protected unRegisterReceiverBroad()V
aload 0
getfield com/product/android/ui/activity/BaseReceiveActivity/registerBroadCast Z
ifeq L0
aload 0
aload 0
getfield com/product/android/ui/activity/BaseReceiveActivity/baseMsgBroadCastReceiver Lcom/product/android/business/service/BaseMsgBroadCastReceiver;
invokevirtual com/product/android/ui/activity/BaseReceiveActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
iconst_0
putfield com/product/android/ui/activity/BaseReceiveActivity/registerBroadCast Z
L0:
return
.limit locals 1
.limit stack 2
.end method
