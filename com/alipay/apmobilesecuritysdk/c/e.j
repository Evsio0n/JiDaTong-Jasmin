.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/c/e
.super java/lang/Object

.field private static 'a' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private static final 'b' [Ljava/lang/String;

.method static <clinit>()V
aconst_null
putstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
bipush 43
anewarray java/lang/String
dup
iconst_0
ldc "AD1"
aastore
dup
iconst_1
ldc "AD2"
aastore
dup
iconst_2
ldc "AD3"
aastore
dup
iconst_3
ldc "AD5"
aastore
dup
iconst_4
ldc "AD6"
aastore
dup
iconst_5
ldc "AD7"
aastore
dup
bipush 6
ldc "AD8"
aastore
dup
bipush 7
ldc "AD9"
aastore
dup
bipush 8
ldc "AD10"
aastore
dup
bipush 9
ldc "AD11"
aastore
dup
bipush 10
ldc "AD12"
aastore
dup
bipush 11
ldc "AD13"
aastore
dup
bipush 12
ldc "AD14"
aastore
dup
bipush 13
ldc "AD15"
aastore
dup
bipush 14
ldc "AD16"
aastore
dup
bipush 15
ldc "AD18"
aastore
dup
bipush 16
ldc "AD19"
aastore
dup
bipush 17
ldc "AD20"
aastore
dup
bipush 18
ldc "AD21"
aastore
dup
bipush 19
ldc "AL3"
aastore
dup
bipush 20
ldc "AA1"
aastore
dup
bipush 21
ldc "AA2"
aastore
dup
bipush 22
ldc "AA3"
aastore
dup
bipush 23
ldc "AA4"
aastore
dup
bipush 24
ldc "AA5"
aastore
dup
bipush 25
ldc "AC1"
aastore
dup
bipush 26
ldc "AC2"
aastore
dup
bipush 27
ldc "AC4"
aastore
dup
bipush 28
ldc "AE1"
aastore
dup
bipush 29
ldc "AE2"
aastore
dup
bipush 30
ldc "AE3"
aastore
dup
bipush 31
ldc "AE4"
aastore
dup
bipush 32
ldc "AE5"
aastore
dup
bipush 33
ldc "AE6"
aastore
dup
bipush 34
ldc "AE7"
aastore
dup
bipush 35
ldc "AE8"
aastore
dup
bipush 36
ldc "AE9"
aastore
dup
bipush 37
ldc "AE10"
aastore
dup
bipush 38
ldc "AE11"
aastore
dup
bipush 39
ldc "AE12"
aastore
dup
bipush 40
ldc "AE13"
aastore
dup
bipush 41
ldc "AE14"
aastore
dup
bipush 42
ldc "AE15"
aastore
putstatic com/alipay/apmobilesecuritysdk/c/e/b [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
new java/util/ArrayList
dup
aload 0
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
astore 4
aload 4
invokestatic java/util/Collections/sort(Ljava/util/List;)V
iconst_0
istore 1
L0:
iload 1
aload 4
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 4
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 5
aload 0
aload 5
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
iload 1
ifne L2
ldc ""
astore 2
L3:
aload 3
aload 7
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
ldc "&"
astore 2
goto L3
L1:
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 8
.limit stack 3
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
.signature "(Landroid/content/Context;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/alipay/apmobilesecuritysdk/c/e
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
ifnonnull L1
aload 0
aload 1
invokestatic com/alipay/apmobilesecuritysdk/c/e/c(Landroid/content/Context;Ljava/util/Map;)V
L1:
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
astore 0
L3:
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method public static a()V
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/c/e
monitorenter
L0:
aconst_null
putstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
L1:
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
return
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
.signature "(Landroid/content/Context;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
ldc com/alipay/apmobilesecuritysdk/c/e
monitorenter
L0:
aload 0
aload 1
invokestatic com/alipay/apmobilesecuritysdk/c/e/a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
pop
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
astore 0
getstatic com/alipay/apmobilesecuritysdk/c/e/b [Ljava/lang/String;
astore 1
aload 1
arraylength
istore 3
L1:
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmpge L5
aload 1
iload 2
aaload
astore 4
L3:
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
aload 4
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L8
aload 0
aload 4
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
aload 4
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
goto L8
L5:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/c/e/a(Ljava/util/Map;)Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/crypto/d/a(Ljava/lang/String;)Ljava/lang/String;
astore 0
L6:
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
aload 0
athrow
L8:
iload 2
iconst_1
iadd
istore 2
goto L7
.limit locals 5
.limit stack 4
.end method

.method private static c(Landroid/content/Context;Ljava/util/Map;)V
.signature "(Landroid/content/Context;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/c/e
monitorenter
L0:
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
astore 2
aload 2
putstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
aload 2
aload 0
aload 1
invokestatic com/alipay/apmobilesecuritysdk/c/b/a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
aload 0
invokestatic com/alipay/apmobilesecuritysdk/c/d/a(Landroid/content/Context;)Ljava/util/Map;
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
aload 0
invokestatic com/alipay/apmobilesecuritysdk/c/c/a(Landroid/content/Context;)Ljava/util/Map;
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
getstatic com/alipay/apmobilesecuritysdk/c/e/a Ljava/util/Map;
aload 0
invokestatic com/alipay/apmobilesecuritysdk/c/a/a(Landroid/content/Context;)Ljava/util/Map;
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
L1:
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
return
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/c/e
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 3
.end method
