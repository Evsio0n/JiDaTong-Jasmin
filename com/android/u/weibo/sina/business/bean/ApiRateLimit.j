.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/bean/ApiRateLimit
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field public 'mExceedTime' Ljava/lang/String;

.field public 'mLimit' I

.field public 'mLimitTimeUnit' Ljava/lang/String;

.field public 'mName' Ljava/lang/String;

.field public 'mRemain' I

.field public 'mRemainSecond' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public setExceedTime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mExceedTime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLimit(I)V
aload 0
iload 1
putfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mLimit I
return
.limit locals 2
.limit stack 2
.end method

.method public setLimitTimeUnit(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mLimitTimeUnit Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRemain(I)V
aload 0
iload 1
putfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mRemain I
return
.limit locals 2
.limit stack 2
.end method

.method public setRemainSecond(J)V
aload 0
lload 1
putfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mRemainSecond J
return
.limit locals 3
.limit stack 3
.end method
