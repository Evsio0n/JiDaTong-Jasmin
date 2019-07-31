.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/CommonSettingConfig
.super java/lang/Object

.field public static 'DO_NOT_NOTICE_NEW_MESSAGE' I

.field public static 'LAND_SCOPE' I

.field public static 'NOTICE_LIGHT' I

.field public static 'NOTICE_NEW_MESSAGE' I

.field public static 'NOTICE_SOUND' I

.field public static 'NOTICE_VIBRATE' I

.field public static 'OPEN_CAMERA' I

.field public static 'PUSH_WINDOW' I

.field private 'mBgMsgReminder' Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;

.field private 'mLandscapeMode' I

.field private 'mLightReminder' I

.field private 'mNewmsgNotification' I

.field private 'mPopupReminder' I

.field private 'mSilent' I

.field private 'mTouchVibrate' I

.method static <clinit>()V
iconst_1
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/PUSH_WINDOW I
iconst_0
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/DO_NOT_NOTICE_NEW_MESSAGE I
iconst_1
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_NEW_MESSAGE I
iconst_1
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_SOUND I
iconst_1
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_VIBRATE I
iconst_1
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/LAND_SCOPE I
iconst_0
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/OPEN_CAMERA I
iconst_0
putstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_LIGHT I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/nd/android/u/controller/bean/CommonSettingConfig/NOTICE_NEW_MESSAGE I
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mNewmsgNotification I
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mSilent I
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mTouchVibrate I
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mPopupReminder I
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mLightReminder I
aload 0
new com/nd/android/u/controller/bean/BgMsgReminderConfig
dup
invokespecial com/nd/android/u/controller/bean/BgMsgReminderConfig/<init>()V
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mLandscapeMode I
return
.limit locals 1
.limit stack 3
.end method

.method public getLandscape_mode()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mLandscapeMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLightReminder()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mLightReminder I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNewmsg_notification()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mNewmsgNotification I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPopup_reminder()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mPopupReminder I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceiveend_hour()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/getReceiveend_hour()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceiveend_minute()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/getReceiveend_minute()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceivestart_hour()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/getReceivestart_hour()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceivestart_minute()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/getReceivestart_minute()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRecmsg_background()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/getRecmsg_background()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSilent()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mSilent I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTouchVibrate()I
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mTouchVibrate I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setLandscape_mode(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mLandscapeMode I
return
.limit locals 2
.limit stack 2
.end method

.method public setLightReminder(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mLightReminder I
return
.limit locals 2
.limit stack 2
.end method

.method public setNewmsg_notification(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mNewmsgNotification I
return
.limit locals 2
.limit stack 2
.end method

.method public setPopup_reminder(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mPopupReminder I
return
.limit locals 2
.limit stack 2
.end method

.method public setReceiveend_hour(I)V
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
iload 1
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/setReceiveend_hour(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setReceiveend_minute(I)V
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
iload 1
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/setReceiveend_minute(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setReceivestart_hour(I)V
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
iload 1
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/setReceivestart_hour(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setReceivestart_minute(I)V
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
iload 1
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/setReceivestart_minute(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setRecmsg_background(I)V
aload 0
getfield com/nd/android/u/controller/bean/CommonSettingConfig/mBgMsgReminder Lcom/nd/android/u/controller/bean/BgMsgReminderConfig;
iload 1
invokevirtual com/nd/android/u/controller/bean/BgMsgReminderConfig/setRecmsg_background(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSilent(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mSilent I
return
.limit locals 2
.limit stack 2
.end method

.method public setTouchVibrate(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/CommonSettingConfig/mTouchVibrate I
return
.limit locals 2
.limit stack 2
.end method
