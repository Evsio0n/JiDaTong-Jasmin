.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/UsersAPI
.super com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final 'SERVER_URL_PRIX' Ljava/lang/String; = "https://api.weibo.com/2/users"

.method public <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
aload 1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
return
.limit locals 2
.limit stack 2
.end method

.method public counts([JLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 1
arraylength
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 6
aload 1
iload 3
laload
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 6
aload 6
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
aload 5
ldc "uids"
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/users/counts.json"
aload 5
ldc "GET"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/UsersAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 7
.limit stack 5
.end method

.method public domainShow(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 3
aload 3
ldc "domain"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/users/domain_show.json"
aload 3
ldc "GET"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/UsersAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public show(JLcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 4
ldc "uid"
lload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;J)V
aload 0
ldc "https://api.weibo.com/2/users/show.json"
aload 4
ldc "GET"
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/UsersAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public show(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 3
aload 3
ldc "screen_name"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "https://api.weibo.com/2/users/show.json"
aload 3
ldc "GET"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/UsersAPI/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 5
.end method
