.bytecode 50.0
.class public synchronized abstract com/android/u/weibo/sina/business/comm/WeiboAPI
.super java/lang/Object
.inner class public static final enum AUTHOR_FILTER inner com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum CAPITAL inner com/android/u/weibo/sina/business/comm/WeiboAPI$CAPITAL outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum COMMENTS_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum COUNT_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$COUNT_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum EMOTION_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$EMOTION_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum FEATURE inner com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum FRIEND_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum LANGUAGE inner com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum RANGE inner com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum SCHOOL_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum SORT inner com/android/u/weibo/sina/business/comm/WeiboAPI$SORT outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum SORT2 inner com/android/u/weibo/sina/business/comm/WeiboAPI$SORT2 outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum SORT3 inner com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3 outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum SRC_FILTER inner com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum STATUSES_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$STATUSES_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum TYPE_FILTER inner com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER outer com/android/u/weibo/sina/business/comm/WeiboAPI
.inner class public static final enum USER_CATEGORY inner com/android/u/weibo/sina/business/comm/WeiboAPI$USER_CATEGORY outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field public static final 'API_SERVER' Ljava/lang/String; = "https://api.weibo.com/2"

.field public static final 'HTTPMETHOD_GET' Ljava/lang/String; = "GET"

.field public static final 'HTTPMETHOD_POST' Ljava/lang/String; = "POST"

.field private 'accessToken' Ljava/lang/String;

.field private 'oAuth2accessToken' Lcom/weibo/sdk/android/Oauth2AccessToken;

.method public <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/comm/WeiboAPI/oAuth2accessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 0
getfield com/android/u/weibo/sina/business/comm/WeiboAPI/oAuth2accessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
ifnull L0
aload 0
aload 0
getfield com/android/u/weibo/sina/business/comm/WeiboAPI/oAuth2accessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getToken()Ljava/lang/String;
putfield com/android/u/weibo/sina/business/comm/WeiboAPI/accessToken Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
aload 2
ldc "access_token"
aload 0
getfield com/android/u/weibo/sina/business/comm/WeiboAPI/accessToken Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
aload 3
aload 4
invokestatic com/weibo/sdk/android/net/AsyncWeiboRunner/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 4
.end method
