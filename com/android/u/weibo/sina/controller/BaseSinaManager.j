.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/controller/BaseSinaManager
.super java/lang/Object
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$1
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$1$1
.inner class inner com/android/u/weibo/sina/controller/BaseSinaManager$2

.field protected static final 'PAGE_SIZE' I = 20


.field private static final 'tag' Ljava/lang/String; = "BaseSinaManager:"

.field protected 'emptyListener' Lcom/android/u/weibo/weibo/controller/NdWeiboListener;

.field protected 'mAccountAPI' Lcom/android/u/weibo/sina/business/comm/AccountAPI;

.field protected 'mContext' Landroid/content/Context;

.field protected 'mLimitManager' Lcom/android/u/weibo/sina/controller/LimitManager;

.field protected 'mSinaWeiboDatabase' Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/android/u/weibo/sina/controller/BaseSinaManager$2
dup
aload 0
invokespecial com/android/u/weibo/sina/controller/BaseSinaManager$2/<init>(Lcom/android/u/weibo/sina/controller/BaseSinaManager;)V
putfield com/android/u/weibo/sina/controller/BaseSinaManager/emptyListener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
return
.limit locals 1
.limit stack 4
.end method

.method protected addLimitCount(I)V
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
ifnull L0
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
invokevirtual com/android/u/weibo/sina/controller/LimitManager/isInitialized()Z
ifeq L0
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
iload 1
invokevirtual com/android/u/weibo/sina/controller/LimitManager/add(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected debug(Ljava/lang/String;)V
ldc "debug"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method protected getErrorCode(Lcom/weibo/sdk/android/WeiboException;)I
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual com/weibo/sdk/android/WeiboException/getMessage()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "error_code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_m1
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected getErrorCode(Ljava/io/IOException;)I
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "error_code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_m1
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected getErrorCode(Ljava/lang/String;)I
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "error_code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
iconst_m1
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected getLimitStatus(Landroid/content/Context;)V
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mAccountAPI Lcom/android/u/weibo/sina/business/comm/AccountAPI;
new com/android/u/weibo/sina/controller/BaseSinaManager$1
dup
aload 0
aload 1
invokespecial com/android/u/weibo/sina/controller/BaseSinaManager$1/<init>(Lcom/android/u/weibo/sina/controller/BaseSinaManager;Landroid/content/Context;)V
invokevirtual com/android/u/weibo/sina/business/comm/AccountAPI/rateLimitStatus(Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/sina/utils/SinaUtil/isNetAvailable(Landroid/content/Context;)Z
ifne L0
aload 2
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
iconst_1
ireturn
L0:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
ifnull L1
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
invokevirtual com/android/u/weibo/sina/controller/LimitManager/isInitialized()Z
ifne L2
L1:
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual com/android/u/weibo/sina/controller/BaseSinaManager/getLimitStatus(Landroid/content/Context;)V
iconst_0
ireturn
L2:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mLimitManager Lcom/android/u/weibo/sina/controller/LimitManager;
iload 1
invokevirtual com/android/u/weibo/sina/controller/LimitManager/isLimitExceeded(I)Z
ifeq L3
aload 2
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/xina_visits_to_upper_limit_try_later I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 3
.limit stack 6
.end method

.method protected processWeiBoException(I)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/unknow_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
iload 1
lookupswitch
-1 : L0
20015 : L1
20016 : L2
20017 : L3
20018 : L4
20019 : L5
20020 : L6
20021 : L7
20022 : L8
20031 : L9
20032 : L10
20104 : L11
20111 : L12
20506 : L13
20522 : L14
21314 : L15
21315 : L16
21316 : L17
21317 : L17
21319 : L18
21327 : L16
21602 : L19
default : L0
L0:
aload 2
areturn
L1:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/canot_finish_operation I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L2:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/send_too_much_times I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L3:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/send_similar_content I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L4:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/includes_illegal_sites I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L5:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/send_the_same_content I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L6:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/includes_ads I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L7:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/includes_illegal_content I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L8:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/ip_abnormal_behavior I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L9:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/need_code I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L10:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/send_success_to_wait I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L11:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/illegal_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L12:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/canot_send_same_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L15:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/token_be_used I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L16:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/token_be_out_time I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L17:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/token_illegal I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L18:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/authorization_lifted I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L19:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/include_sensitive_words I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L13:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/be_focused_user I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L14:
aload 0
getfield com/android/u/weibo/sina/controller/BaseSinaManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/not_focused_user I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method
