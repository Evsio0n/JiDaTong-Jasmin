.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/BgMsgReminderConfig
.super java/lang/Object

.field public static final 'ALL_DAY' I = 1


.field private 'mEndTime' Lcom/nd/android/u/controller/bean/HourMinute;

.field private 'mRecmsgBackground' I

.field private 'mStartTime' Lcom/nd/android/u/controller/bean/HourMinute;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mRecmsgBackground I
aload 0
new com/nd/android/u/controller/bean/HourMinute
dup
bipush 8
iconst_0
invokespecial com/nd/android/u/controller/bean/HourMinute/<init>(II)V
putfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mStartTime Lcom/nd/android/u/controller/bean/HourMinute;
aload 0
new com/nd/android/u/controller/bean/HourMinute
dup
bipush 23
iconst_0
invokespecial com/nd/android/u/controller/bean/HourMinute/<init>(II)V
putfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mEndTime Lcom/nd/android/u/controller/bean/HourMinute;
return
.limit locals 1
.limit stack 5
.end method

.method public getReceiveend_hour()I
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mEndTime Lcom/nd/android/u/controller/bean/HourMinute;
invokevirtual com/nd/android/u/controller/bean/HourMinute/getHour()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceiveend_minute()I
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mEndTime Lcom/nd/android/u/controller/bean/HourMinute;
invokevirtual com/nd/android/u/controller/bean/HourMinute/getMinute()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceivestart_hour()I
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mStartTime Lcom/nd/android/u/controller/bean/HourMinute;
invokevirtual com/nd/android/u/controller/bean/HourMinute/getHour()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReceivestart_minute()I
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mStartTime Lcom/nd/android/u/controller/bean/HourMinute;
invokevirtual com/nd/android/u/controller/bean/HourMinute/getMinute()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRecmsg_background()I
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mRecmsgBackground I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setReceiveend_hour(I)V
.throws java/lang/IllegalArgumentException
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mEndTime Lcom/nd/android/u/controller/bean/HourMinute;
iload 1
invokevirtual com/nd/android/u/controller/bean/HourMinute/setHour(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setReceiveend_minute(I)V
.throws java/lang/IllegalArgumentException
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mEndTime Lcom/nd/android/u/controller/bean/HourMinute;
iload 1
invokevirtual com/nd/android/u/controller/bean/HourMinute/setMinute(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setReceivestart_hour(I)V
.throws java/lang/IllegalArgumentException
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mStartTime Lcom/nd/android/u/controller/bean/HourMinute;
iload 1
invokevirtual com/nd/android/u/controller/bean/HourMinute/setHour(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setReceivestart_minute(I)V
.throws java/lang/IllegalArgumentException
aload 0
getfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mStartTime Lcom/nd/android/u/controller/bean/HourMinute;
iload 1
invokevirtual com/nd/android/u/controller/bean/HourMinute/setMinute(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setRecmsg_background(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/BgMsgReminderConfig/mRecmsgBackground I
return
.limit locals 2
.limit stack 2
.end method
