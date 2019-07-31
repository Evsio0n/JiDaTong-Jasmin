.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/HourMinute
.super java/lang/Object

.field private 'mHour' I

.field private 'mMinute' I

.method public <init>(II)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/HourMinute/mHour I
aload 0
iload 2
putfield com/nd/android/u/controller/bean/HourMinute/mMinute I
aload 0
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mHour I
invokespecial com/nd/android/u/controller/bean/HourMinute/checkHour(I)V
aload 0
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mMinute I
invokespecial com/nd/android/u/controller/bean/HourMinute/checkMinute(I)V
return
.limit locals 3
.limit stack 2
.end method

.method private checkHour(I)V
.throws java/lang/IllegalArgumentException
aload 0
iload 1
invokespecial com/nd/android/u/controller/bean/HourMinute/isHourValid(I)Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "Invalid value for hours"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private checkMinute(I)V
.throws java/lang/IllegalArgumentException
aload 0
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mMinute I
invokespecial com/nd/android/u/controller/bean/HourMinute/isMinuteValid(I)Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "Invalid value for minutes"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private isHourValid(I)Z
aload 0
iload 1
iconst_0
bipush 23
invokespecial com/nd/android/u/controller/bean/HourMinute/isValueValid(III)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method private isMinuteValid(I)Z
aload 0
iload 1
iconst_0
bipush 59
invokespecial com/nd/android/u/controller/bean/HourMinute/isValueValid(III)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method private isValueValid(III)Z
iload 1
iload 2
if_icmplt L0
iload 1
iload 3
if_icmple L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getHour()I
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mHour I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMinute()I
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mMinute I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setHour(I)V
.throws java/lang/IllegalArgumentException
aload 0
iload 1
putfield com/nd/android/u/controller/bean/HourMinute/mHour I
aload 0
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mHour I
invokespecial com/nd/android/u/controller/bean/HourMinute/checkHour(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setMinute(I)V
.throws java/lang/IllegalArgumentException
aload 0
iload 1
putfield com/nd/android/u/controller/bean/HourMinute/mMinute I
aload 0
aload 0
getfield com/nd/android/u/controller/bean/HourMinute/mMinute I
invokespecial com/nd/android/u/controller/bean/HourMinute/checkMinute(I)V
return
.limit locals 2
.limit stack 2
.end method
