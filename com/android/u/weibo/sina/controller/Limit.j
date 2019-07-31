.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/controller/Limit
.super java/lang/Object
.inner class inner com/android/u/weibo/sina/controller/Limit$1
.inner class inner com/android/u/weibo/sina/controller/Limit$2

.field private static final 'HOUR' J = 3600000L


.field private static final 'TYPE_DAY' Ljava/lang/String; = "DAYS"

.field private 'handler' Landroid/os/Handler;

.field private 'mApiRateLimit' Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;

.field private 'mCount' I

.field private 'mCycle' J

.field private 'mExceedTime' Ljava/lang/String;

.field private 'mLimit' I

.field private 'mRemainSecond' J

.method public <init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/sina/controller/Limit/mCount I
aload 0
lconst_0
putfield com/android/u/weibo/sina/controller/Limit/mRemainSecond J
aload 0
lconst_0
putfield com/android/u/weibo/sina/controller/Limit/mCycle J
aload 0
new com/android/u/weibo/sina/controller/Limit$2
dup
aload 0
invokespecial com/android/u/weibo/sina/controller/Limit$2/<init>(Lcom/android/u/weibo/sina/controller/Limit;)V
putfield com/android/u/weibo/sina/controller/Limit/handler Landroid/os/Handler;
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/Limit/mApiRateLimit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mApiRateLimit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mLimit I
putfield com/android/u/weibo/sina/controller/Limit/mLimit I
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mLimit I
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mApiRateLimit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mRemain I
isub
putfield com/android/u/weibo/sina/controller/Limit/mCount I
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mApiRateLimit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mExceedTime Ljava/lang/String;
putfield com/android/u/weibo/sina/controller/Limit/mExceedTime Ljava/lang/String;
aload 0
invokespecial com/android/u/weibo/sina/controller/Limit/getRemainSecond()V
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mRemainSecond J
invokespecial com/android/u/weibo/sina/controller/Limit/startTimer(J)V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$002(Lcom/android/u/weibo/sina/controller/Limit;I)I
aload 0
iload 1
putfield com/android/u/weibo/sina/controller/Limit/mCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/sina/controller/Limit;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/sina/controller/Limit/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/sina/controller/Limit;)J
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mCycle J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/sina/controller/Limit;J)V
aload 0
lload 1
invokespecial com/android/u/weibo/sina/controller/Limit/startTimer(J)V
return
.limit locals 3
.limit stack 3
.end method

.method private getRemainSecond()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mApiRateLimit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mRemainSecond J
ldc2_w 1000L
lmul
putfield com/android/u/weibo/sina/controller/Limit/mRemainSecond J
aload 0
ldc2_w 3600000L
putfield com/android/u/weibo/sina/controller/Limit/mCycle J
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mApiRateLimit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mLimitTimeUnit Ljava/lang/String;
ldc "DAYS"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mExceedTime Ljava/lang/String;
ldc " "
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_1
aaload
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mRemainSecond J
bipush 24
iload 1
isub
i2l
ldc2_w 3600000L
lmul
ladd
putfield com/android/u/weibo/sina/controller/Limit/mRemainSecond J
aload 0
ldc2_w 86400000L
putfield com/android/u/weibo/sina/controller/Limit/mCycle J
L1:
return
L2:
astore 2
return
.limit locals 3
.limit stack 7
.end method

.method private startTimer(J)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/android/u/weibo/sina/controller/Limit$1
dup
aload 0
invokespecial com/android/u/weibo/sina/controller/Limit$1/<init>(Lcom/android/u/weibo/sina/controller/Limit;)V
lload 1
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method public add()V
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mCount I
iconst_1
iadd
putfield com/android/u/weibo/sina/controller/Limit/mCount I
return
.limit locals 1
.limit stack 3
.end method

.method public isLimitExceeded()Z
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mCount I
aload 0
getfield com/android/u/weibo/sina/controller/Limit/mLimit I
if_icmplt L0
iconst_1
istore 1
L1:
iload 1
ifeq L2
iconst_1
ireturn
L0:
iconst_0
istore 1
goto L1
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
