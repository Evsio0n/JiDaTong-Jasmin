.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType
.implements java/io/Serializable
.inner class public TypeMsg inner com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg outer com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo

.field private static final 'serialVersionUID' J = 1L


.field public 'backPackList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/backpack/BackPackItem;>;"

.field public 'num' I

.field public 'typeMsgList' Ljava/util/List; signature "Ljava/util/List<Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public loadFromJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "num"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/num I
aload 1
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual org/json/JSONArray/length()I
ifle L0
aload 0
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/typeMsgList Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/typeMsgList Ljava/util/List;
L1:
iconst_0
istore 2
L2:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 1
iload 2
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
astore 3
new com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg
dup
aload 0
invokespecial com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg/<init>(Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;)V
astore 4
aload 4
aload 3
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg/msg Ljava/lang/String;
aload 4
aload 3
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg/type I
aload 0
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/typeMsgList Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L0:
return
.limit locals 5
.limit stack 3
.end method
