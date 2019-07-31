.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/AccountAPI
.super com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final 'SERVER_URL_PRIX' Ljava/lang/String; = "https://api.weibo.com/2/account"

.method public <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
return
.limit locals 2
.limit stack 2
.end method

.method public endSession(Lcom/weibo/sdk/android/net/RequestListener;)V
aload 0
ldc "https://api.weibo.com/2/account/end_session.json"
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
ldc "POST"
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/AccountAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public getPrivacy(Lcom/weibo/sdk/android/net/RequestListener;)V
aload 0
ldc "https://api.weibo.com/2/account/get_privacy.json"
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
ldc "GET"
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/AccountAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public getUid(Lcom/weibo/sdk/android/net/RequestListener;)V
aload 0
ldc "https://api.weibo.com/2/account/get_uid.json"
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
ldc "GET"
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/AccountAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public rateLimitStatus(Lcom/weibo/sdk/android/net/RequestListener;)V
aload 0
ldc "https://api.weibo.com/2/account/rate_limit_status.json"
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
ldc "GET"
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/AccountAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public schoolList(IIILcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$CAPITAL;Ljava/lang/String;ILcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 9
aload 9
ldc "province"
iload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 9
ldc "city"
iload 2
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 9
ldc "area"
iload 3
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 9
ldc "type"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/ordinal()I
iconst_1
iadd
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$CAPITAL/name()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 9
ldc "capital"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/WeiboAPI$CAPITAL/name()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 9
ldc "count"
iload 7
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;I)V
aload 0
ldc "https://api.weibo.com/2/account/profile/school_list.json"
aload 9
ldc "GET"
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/AccountAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L0:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 9
ldc "keyword"
aload 6
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 10
.limit stack 5
.end method
