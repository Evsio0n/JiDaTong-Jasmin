.bytecode 50.0
.class public synchronized com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl
.super java/lang/Object

.field public static final 'BASE_URL' Ljava/lang/String;

.field public static final 'GET_RECOMMENDS' Ljava/lang/String;

.field public static final 'GET_USER_GUIDEVER' Ljava/lang/String;

.field public static final 'SET_USER_GUIDEVER' Ljava/lang/String;

.method static <clinit>()V
invokestatic com/product/android/business/config/Configuration/getTweetServerURL()Ljava/lang/String;
putstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/BASE_URL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_api/guide_ver"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/SET_USER_GUIDEVER Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_api/guide_ver"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/GET_USER_GUIDEVER Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "relation_api/recommend_s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/weibo/buss/sdk/XYWeiboRequireUrl/GET_RECOMMENDS Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
