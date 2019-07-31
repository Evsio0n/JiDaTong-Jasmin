.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/business/comm/FlowerUrl
.super java/lang/Object

.field public static final 'DELETE_FLOWER_MESSAGE' Ljava/lang/String;

.field public static final 'FLOWERLEFT' Ljava/lang/String;

.field public static final 'FLOWER_BASE_URL' Ljava/lang/String;

.field public static final 'FLOWER_INFO_RECV' Ljava/lang/String;

.field public static final 'FLOWER_INFO_SEND' Ljava/lang/String;

.field public static final 'FRIEND_FLOWER_DESC' Ljava/lang/String;

.field public static final 'GET_FLOWER_MESSAGE' Ljava/lang/String;

.field public static final 'GET_USER_FLOWER_INFO' Ljava/lang/String;

.field public static final 'RANK_AD' Ljava/lang/String;

.field public static final 'SEND_BATCH_FLOWER' Ljava/lang/String;

.field public static final 'SET_FLOWER_MESSAGE' Ljava/lang/String;

.field public static final 'USER_FLOWERS_DESC' Ljava/lang/String;

.field public static final 'USER_FLOWERS_RANK' Ljava/lang/String;

.field public static final 'USER_FLOWER_INFO' Ljava/lang/String;

.method static <clinit>()V
invokestatic com/product/android/business/config/Configuration/getFlowerServerUrl()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/rankad"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/RANK_AD Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/userflowersrank"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/USER_FLOWERS_RANK Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/userflowersdesc"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/USER_FLOWERS_DESC Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/friendflowersdesc"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FRIEND_FLOWER_DESC Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "itemc/getitembytype"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWERLEFT Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/userflowerinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/USER_FLOWER_INFO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/flowerinforecv"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_INFO_RECV Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/flowerinfosend"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_INFO_SEND Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "itemc/useitem"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/SEND_BATCH_FLOWER Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "itemc/setmessage"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/SET_FLOWER_MESSAGE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "itemc/getmessage"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/GET_FLOWER_MESSAGE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "itemc/delmessage"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/DELETE_FLOWER_MESSAGE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/flower/business/comm/FlowerUrl/FLOWER_BASE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "flowerc/userflowerinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/android/u/weibo/flower/business/comm/FlowerUrl/GET_USER_FLOWER_INFO Ljava/lang/String;
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
