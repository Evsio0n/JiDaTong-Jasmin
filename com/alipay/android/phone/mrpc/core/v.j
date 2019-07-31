.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/v
.super com/alipay/android/phone/mrpc/core/aa

.field 'a' Ljava/lang/String;

.field 'b' [B

.field 'c' Ljava/lang/String;

.field 'd' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lorg/apache/http/Header;>;"

.field 'e' Z

.field private 'h' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial com/alipay/android/phone/mrpc/core/aa/<init>()V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alipay/android/phone/mrpc/core/v/d Ljava/util/ArrayList;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
aload 0
ldc "application/x-www-form-urlencoded"
putfield com/alipay/android/phone/mrpc/core/v/c Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method private a(Z)V
aload 0
iload 1
putfield com/alipay/android/phone/mrpc/core/v/e Z
return
.limit locals 2
.limit stack 2
.end method

.method private a([B)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/v/b [B
return
.limit locals 2
.limit stack 2
.end method

.method private b()Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private b(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/v/c Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private c()[B
aload 0
getfield com/alipay/android/phone/mrpc/core/v/b [B
areturn
.limit locals 1
.limit stack 1
.end method

.method private d()Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/v/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private e()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
aload 0
getfield com/alipay/android/phone/mrpc/core/v/d Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method private f()Z
aload 0
getfield com/alipay/android/phone/mrpc/core/v/e Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
L0:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 3
.limit stack 3
.end method

.method public final a(Lorg/apache/http/Header;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/v/d Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public final equals(Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpne L0
L1:
iconst_1
ireturn
L0:
aload 1
ifnonnull L2
iconst_0
ireturn
L2:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpeq L3
iconst_0
ireturn
L3:
aload 1
checkcast com/alipay/android/phone/mrpc/core/v
astore 1
aload 0
getfield com/alipay/android/phone/mrpc/core/v/b [B
ifnonnull L4
aload 1
getfield com/alipay/android/phone/mrpc/core/v/b [B
ifnull L5
iconst_0
ireturn
L4:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/b [B
aload 1
getfield com/alipay/android/phone/mrpc/core/v/b [B
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L5
iconst_0
ireturn
L5:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
ifnonnull L6
aload 1
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
ifnull L1
iconst_0
ireturn
L6:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
aload 1
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final hashCode()I
iconst_1
istore 2
iload 2
istore 1
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
ifnull L0
iload 2
istore 1
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
ldc "id"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/alipay/android/phone/mrpc/core/v/h Ljava/util/Map;
ldc "id"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokevirtual java/lang/String/hashCode()I
bipush 31
iadd
istore 1
L0:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
ifnonnull L1
iconst_0
istore 2
L2:
iload 2
iload 1
bipush 31
imul
iadd
ireturn
L1:
aload 0
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
istore 2
goto L2
.limit locals 3
.limit stack 3
.end method

.method public final toString()Ljava/lang/String;
ldc "Url : %s,HttpHeader: %s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/alipay/android/phone/mrpc/core/v/a Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/alipay/android/phone/mrpc/core/v/d Ljava/util/ArrayList;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 5
.end method
