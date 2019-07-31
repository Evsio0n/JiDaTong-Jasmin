.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/controller/LimitManager
.super java/lang/Object

.field public static final 'TYPE_COMMENT' I = 2


.field public static final 'TYPE_FRIEND' I = 3


.field public static final 'TYPE_HIT' I = 0


.field public static final 'TYPE_TWEET' I = 1


.field private static 'instance' Lcom/android/u/weibo/sina/controller/LimitManager;

.field private 'mLimitComment' Lcom/android/u/weibo/sina/controller/Limit;

.field private 'mLimitFriendDay' Lcom/android/u/weibo/sina/controller/Limit;

.field private 'mLimitFriendHour' Lcom/android/u/weibo/sina/controller/Limit;

.field private 'mLimitIp' Lcom/android/u/weibo/sina/controller/Limit;

.field private 'mLimitUpdate' Lcom/android/u/weibo/sina/controller/Limit;

.field private 'mLimitUser' Lcom/android/u/weibo/sina/controller/Limit;

.field private 'mbIsInitialized' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/sina/controller/LimitManager/mbIsInitialized Z
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/android/u/weibo/sina/controller/LimitManager;
getstatic com/android/u/weibo/sina/controller/LimitManager/instance Lcom/android/u/weibo/sina/controller/LimitManager;
ifnonnull L0
new com/android/u/weibo/sina/controller/LimitManager
dup
invokespecial com/android/u/weibo/sina/controller/LimitManager/<init>()V
putstatic com/android/u/weibo/sina/controller/LimitManager/instance Lcom/android/u/weibo/sina/controller/LimitManager;
L0:
getstatic com/android/u/weibo/sina/controller/LimitManager/instance Lcom/android/u/weibo/sina/controller/LimitManager;
areturn
.limit locals 0
.limit stack 2
.end method

.method public add(I)V
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mbIsInitialized Z
ifne L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitIp Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/add()V
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitUser Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/add()V
iload 1
ifeq L1
iload 1
iconst_2
if_icmpne L2
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitComment Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/add()V
return
L2:
iload 1
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitUpdate Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/add()V
return
L3:
iload 1
iconst_3
if_icmpne L1
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitFriendDay Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/add()V
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitFriendHour Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/add()V
return
.limit locals 2
.limit stack 2
.end method

.method public isInitialized()Z
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mbIsInitialized Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLimitExceeded(I)Z
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mbIsInitialized Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitIp Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/isLimitExceeded()Z
ifne L2
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitUser Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/isLimitExceeded()Z
ifeq L3
L2:
iconst_1
istore 2
L4:
iload 2
ifeq L5
iconst_1
ireturn
L3:
iconst_0
istore 2
goto L4
L5:
iload 1
tableswitch 0
L1
L6
L7
L8
default : L9
L9:
iconst_1
ireturn
L7:
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitComment Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/isLimitExceeded()Z
ireturn
L6:
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitUpdate Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/isLimitExceeded()Z
ireturn
L8:
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitFriendHour Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/isLimitExceeded()Z
ifne L10
aload 0
getfield com/android/u/weibo/sina/controller/LimitManager/mLimitFriendDay Lcom/android/u/weibo/sina/controller/Limit;
invokevirtual com/android/u/weibo/sina/controller/Limit/isLimitExceeded()Z
ifeq L1
L10:
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public setRateLimitStatus(Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;)V
aload 1
ifnonnull L0
aload 0
iconst_0
putfield com/android/u/weibo/sina/controller/LimitManager/mbIsInitialized Z
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/sina/controller/LimitManager/mbIsInitialized Z
aload 0
new com/android/u/weibo/sina/controller/Limit
dup
aload 1
getfield com/android/u/weibo/sina/business/bean/RateLimitStatus/mIpHit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
invokespecial com/android/u/weibo/sina/controller/Limit/<init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
putfield com/android/u/weibo/sina/controller/LimitManager/mLimitIp Lcom/android/u/weibo/sina/controller/Limit;
aload 0
new com/android/u/weibo/sina/controller/Limit
dup
aload 1
getfield com/android/u/weibo/sina/business/bean/RateLimitStatus/mUserHit Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
invokespecial com/android/u/weibo/sina/controller/Limit/<init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
putfield com/android/u/weibo/sina/controller/LimitManager/mLimitUser Lcom/android/u/weibo/sina/controller/Limit;
aload 0
new com/android/u/weibo/sina/controller/Limit
dup
aload 1
getfield com/android/u/weibo/sina/business/bean/RateLimitStatus/mComment Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
invokespecial com/android/u/weibo/sina/controller/Limit/<init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
putfield com/android/u/weibo/sina/controller/LimitManager/mLimitComment Lcom/android/u/weibo/sina/controller/Limit;
aload 0
new com/android/u/weibo/sina/controller/Limit
dup
aload 1
getfield com/android/u/weibo/sina/business/bean/RateLimitStatus/mUpdate Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
invokespecial com/android/u/weibo/sina/controller/Limit/<init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
putfield com/android/u/weibo/sina/controller/LimitManager/mLimitUpdate Lcom/android/u/weibo/sina/controller/Limit;
aload 0
new com/android/u/weibo/sina/controller/Limit
dup
aload 1
getfield com/android/u/weibo/sina/business/bean/RateLimitStatus/mFriendDay Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
invokespecial com/android/u/weibo/sina/controller/Limit/<init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
putfield com/android/u/weibo/sina/controller/LimitManager/mLimitFriendDay Lcom/android/u/weibo/sina/controller/Limit;
aload 0
new com/android/u/weibo/sina/controller/Limit
dup
aload 1
getfield com/android/u/weibo/sina/business/bean/RateLimitStatus/mFriendHour Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
invokespecial com/android/u/weibo/sina/controller/Limit/<init>(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
putfield com/android/u/weibo/sina/controller/LimitManager/mLimitFriendHour Lcom/android/u/weibo/sina/controller/Limit;
return
.limit locals 2
.limit stack 4
.end method
