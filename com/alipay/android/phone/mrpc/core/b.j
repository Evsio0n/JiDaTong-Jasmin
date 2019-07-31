.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/b
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'a' J = -6098125857367743614L


.field private 'b' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alipay/android/phone/mrpc/core/b/b Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method private a()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 0
getfield com/alipay/android/phone/mrpc/core/b/b Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method private a(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/b/b Ljava/util/Map;
return
.limit locals 2
.limit stack 2
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/b/b Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/b/b Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 3
.limit stack 3
.end method
