.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/Keywords
.super java/lang/Object

.field public static 'DEFAULT_KEYWORDS' Lcom/alibaba/fastjson/parser/Keywords;

.field private final 'keywords' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 0
aload 0
ldc "null"
bipush 8
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
ldc "new"
bipush 9
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
ldc "true"
bipush 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
ldc "false"
bipush 7
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
new com/alibaba/fastjson/parser/Keywords
dup
aload 0
invokespecial com/alibaba/fastjson/parser/Keywords/<init>(Ljava/util/Map;)V
putstatic com/alibaba/fastjson/parser/Keywords/DEFAULT_KEYWORDS Lcom/alibaba/fastjson/parser/Keywords;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/Keywords/keywords Ljava/util/Map;
return
.limit locals 2
.limit stack 2
.end method

.method public getKeyword(Ljava/lang/String;)Ljava/lang/Integer;
aload 0
getfield com/alibaba/fastjson/parser/Keywords/keywords Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
areturn
.limit locals 2
.limit stack 2
.end method
