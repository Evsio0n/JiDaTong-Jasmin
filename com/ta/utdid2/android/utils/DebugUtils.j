.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/DebugUtils
.super java/lang/Object

.field public static 'DBG' Z = 0


.field private static final 'PROPERTY_DEBUG' Ljava/lang/String; = "alidebug"

.field private static 'mClassType' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private static 'mGetIntMethod' Ljava/lang/reflect/Method;

.field private static 'mGetMethod' Ljava/lang/reflect/Method;

.method static <clinit>()V
iconst_1
istore 0
ldc "alidebug"
iconst_0
invokestatic com/ta/utdid2/android/utils/DebugUtils/getInt(Ljava/lang/String;I)I
iconst_1
if_icmpne L0
L1:
iload 0
putstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
aconst_null
putstatic com/ta/utdid2/android/utils/DebugUtils/mClassType Ljava/lang/Class;
aconst_null
putstatic com/ta/utdid2/android/utils/DebugUtils/mGetMethod Ljava/lang/reflect/Method;
aconst_null
putstatic com/ta/utdid2/android/utils/DebugUtils/mGetIntMethod Ljava/lang/reflect/Method;
return
L0:
iconst_0
istore 0
goto L1
.limit locals 1
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
invokestatic com/ta/utdid2/android/utils/DebugUtils/init()V
L0:
getstatic com/ta/utdid2/android/utils/DebugUtils/mGetMethod Ljava/lang/reflect/Method;
getstatic com/ta/utdid2/android/utils/DebugUtils/mClassType Ljava/lang/Class;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 1
.limit stack 6
.end method

.method public static getInt(Ljava/lang/String;I)I
.catch java/lang/Exception from L0 to L1 using L2
invokestatic com/ta/utdid2/android/utils/DebugUtils/init()V
L0:
getstatic com/ta/utdid2/android/utils/DebugUtils/mGetIntMethod Ljava/lang/reflect/Method;
getstatic com/ta/utdid2/android/utils/DebugUtils/mClassType Ljava/lang/Class;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
dup
iconst_1
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
L1:
iload 2
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iload 1
ireturn
.limit locals 3
.limit stack 6
.end method

.method private static init()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
getstatic com/ta/utdid2/android/utils/DebugUtils/mClassType Ljava/lang/Class;
ifnonnull L1
ldc "android.os.SystemProperties"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 0
aload 0
putstatic com/ta/utdid2/android/utils/DebugUtils/mClassType Ljava/lang/Class;
aload 0
ldc "get"
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
putstatic com/ta/utdid2/android/utils/DebugUtils/mGetMethod Ljava/lang/reflect/Method;
getstatic com/ta/utdid2/android/utils/DebugUtils/mClassType Ljava/lang/Class;
ldc "getInt"
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
dup
iconst_1
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
putstatic com/ta/utdid2/android/utils/DebugUtils/mGetIntMethod Ljava/lang/reflect/Method;
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 1
.limit stack 6
.end method
