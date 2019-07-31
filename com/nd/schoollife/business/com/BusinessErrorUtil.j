.bytecode 50.0
.class public final synchronized com/nd/schoollife/business/com/BusinessErrorUtil
.super java/lang/Object

.field private static 'communityErrorMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field private static 'forumSdkErrorMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field private static 'squareIndexErrorMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/schoollife/business/com/BusinessErrorUtil/forumSdkErrorMap Ljava/util/HashMap;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/schoollife/business/com/BusinessErrorUtil/squareIndexErrorMap Ljava/util/HashMap;
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042001"
ldc "\u56e2\u4f53\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042011"
ldc "\u56e2\u4f53\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042021"
ldc "\u56e2\u4f53\u7b80\u4ecb\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042002"
ldc "\u56e2\u4f53\u540d\u79f0\u3002[1,30]\u5b57\uff0c\u5141\u8bb8\u6c49\u5b57\u3001\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042012"
ldc "\u56e2\u4f53\u5206\u7c7b[1,1]\u4e2a"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042022"
ldc "\u56e2\u4f53\u7b80\u4ecb\u5185\u5bb9\u8fc7\u957f,\u4e0a\u9650\u4e3a140\u4e2a\u5b57"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042032"
ldc "\u56e2\u4f53\u6807\u7b7e[0,5]\u4e2a"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042042"
ldc "\u5934\u50cf\u4e0d\u7b26\u5408\u89c4\u5219"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042013"
ldc "\u5206\u7c7b\u4e0d\u5b58\u5728"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042033"
ldc "id[:id]\u6807\u7b7e\u4e0d\u5b58\u5728"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042043"
ldc "\u5934\u50cf\u5730\u5740\u4e0d\u5b58\u5728"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042005"
ldc "\u521b\u5efa\u56e2\u4f53\u5931\u8d25"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042051"
ldc "\u56e2\u4f53id\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042053"
ldc "\u56e2\u4f53\u4e0d\u5b58\u5728"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042061"
ldc "\u5ba1\u6279\u4e0d\u901a\u8fc7\u65f6\u5fc5\u987b\u586b\u5199\u539f\u56e0"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042095"
ldc "\u4fee\u6539\u56e2\u4f53\u5931\u8d25"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042009"
ldc "\u6821\u5185\u56e2\u4f53\u540d\u79f0\u5df2\u7ecf\u5b58\u5728"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042094"
ldc "\u4f60\u6ca1\u6709\u505a\u4efb\u4f55\u4fee\u6539"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042075"
ldc "\u9000\u51fa\u56e2\u4f53\u5931\u8d25"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042085"
ldc "\u7533\u8bf7\u52a0\u5165\u5931\u8d25"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042079"
ldc "\u5df2\u7ecf\u662f\u8be5\u56e2\u4f53\u6210\u5458\u4e86"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042086"
ldc "\u4f60\u4e0d\u662f\u56e2\u4f53\u6210\u5458,\u6ca1\u6743\u67e5\u770b\u6210\u5458\u5217\u8868"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042087"
ldc "\u975e\u9a73\u56de\u4e0e\u672a\u5ba1\u6838\u72b6\u6001\u4e0d\u80fd\u5ba1\u6838"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042088"
ldc "\u5ba1\u6279\u5931\u8d25"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042089"
ldc "\u521b\u5efa\u8005\u4e0d\u80fd\u9000\u51fa\u56e2\u4f53,\u5982\u679c\u9000\u51fa\u8bf7\u8d70\u89e3\u6563\u56e2\u4f53\u6d41\u7a0b"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042097"
ldc "\u60a8\u521b\u5efa\u7684\u56e2\u4f53\u5df2\u88ab\u6279\u51c6"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
ldc "1042098"
ldc "\u975e\u56e2\u4f53\u521b\u5efa\u8005\u6216\u7ba1\u5458\u4e0d\u80fd\u4fee\u6539\u56e2\u4f53\u4fe1\u606f"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/forumSdkErrorMap Ljava/util/HashMap;
ldc ""
ldc ""
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/squareIndexErrorMap Ljava/util/HashMap;
ldc ""
ldc ""
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 0
.limit stack 3
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static resolveCommunityError(Ljava/lang/String;)Ljava/lang/String;
ldc "\u672a\u77e5\u9519\u8bef~"
astore 1
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/communityErrorMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static resolveForumSdkError(Ljava/lang/String;)Ljava/lang/String;
ldc "\u672a\u77e5\u9519\u8bef~"
astore 1
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/forumSdkErrorMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/forumSdkErrorMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static resolveSquareIndexError(Ljava/lang/String;)Ljava/lang/String;
ldc "\u672a\u77e5\u9519\u8bef~"
astore 1
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/squareIndexErrorMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
getstatic com/nd/schoollife/business/com/BusinessErrorUtil/squareIndexErrorMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
