.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/SerializeConfig
.super com/alibaba/fastjson/util/IdentityHashMap
.signature "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;>;"

.field private static final 'globalInstance' Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private 'asm' Z

.field private final 'asmFactory' Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field private 'typeKey' Ljava/lang/String;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/SerializeConfig
dup
invokespecial com/alibaba/fastjson/serializer/SerializeConfig/<init>()V
putstatic com/alibaba/fastjson/serializer/SerializeConfig/globalInstance Lcom/alibaba/fastjson/serializer/SerializeConfig;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
sipush 1024
invokespecial com/alibaba/fastjson/serializer/SerializeConfig/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
iload 1
invokespecial com/alibaba/fastjson/util/IdentityHashMap/<init>(I)V
invokestatic com/alibaba/fastjson/util/ASMUtils/isAndroid()Z
ifne L3
iconst_1
istore 2
L4:
aload 0
iload 2
putfield com/alibaba/fastjson/serializer/SerializeConfig/asm Z
aload 0
new com/alibaba/fastjson/serializer/ASMSerializerFactory
dup
invokespecial com/alibaba/fastjson/serializer/ASMSerializerFactory/<init>()V
putfield com/alibaba/fastjson/serializer/SerializeConfig/asmFactory Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
aload 0
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
putfield com/alibaba/fastjson/serializer/SerializeConfig/typeKey Ljava/lang/String;
aload 0
ldc java/lang/Boolean
getstatic com/alibaba/fastjson/serializer/BooleanCodec/instance Lcom/alibaba/fastjson/serializer/BooleanCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Character
getstatic com/alibaba/fastjson/serializer/CharacterCodec/instance Lcom/alibaba/fastjson/serializer/CharacterCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Byte
getstatic com/alibaba/fastjson/serializer/ByteSerializer/instance Lcom/alibaba/fastjson/serializer/ByteSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Short
getstatic com/alibaba/fastjson/serializer/ShortSerializer/instance Lcom/alibaba/fastjson/serializer/ShortSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Integer
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Long
getstatic com/alibaba/fastjson/serializer/LongCodec/instance Lcom/alibaba/fastjson/serializer/LongCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Float
getstatic com/alibaba/fastjson/serializer/FloatCodec/instance Lcom/alibaba/fastjson/serializer/FloatCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Double
getstatic com/alibaba/fastjson/serializer/DoubleSerializer/instance Lcom/alibaba/fastjson/serializer/DoubleSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/math/BigDecimal
getstatic com/alibaba/fastjson/serializer/BigDecimalCodec/instance Lcom/alibaba/fastjson/serializer/BigDecimalCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/math/BigInteger
getstatic com/alibaba/fastjson/serializer/BigIntegerCodec/instance Lcom/alibaba/fastjson/serializer/BigIntegerCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/String
getstatic com/alibaba/fastjson/serializer/StringCodec/instance Lcom/alibaba/fastjson/serializer/StringCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [B
getstatic com/alibaba/fastjson/serializer/ByteArraySerializer/instance Lcom/alibaba/fastjson/serializer/ByteArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [S
getstatic com/alibaba/fastjson/serializer/ShortArraySerializer/instance Lcom/alibaba/fastjson/serializer/ShortArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [I
getstatic com/alibaba/fastjson/serializer/IntArraySerializer/instance Lcom/alibaba/fastjson/serializer/IntArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [J
getstatic com/alibaba/fastjson/serializer/LongArraySerializer/instance Lcom/alibaba/fastjson/serializer/LongArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [F
getstatic com/alibaba/fastjson/serializer/FloatArraySerializer/instance Lcom/alibaba/fastjson/serializer/FloatArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [D
getstatic com/alibaba/fastjson/serializer/DoubleArraySerializer/instance Lcom/alibaba/fastjson/serializer/DoubleArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [Z
getstatic com/alibaba/fastjson/serializer/BooleanArraySerializer/instance Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [C
getstatic com/alibaba/fastjson/serializer/CharArraySerializer/instance Lcom/alibaba/fastjson/serializer/CharArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc [Ljava/lang/Object;
getstatic com/alibaba/fastjson/serializer/ObjectArraySerializer/instance Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Class
getstatic com/alibaba/fastjson/serializer/ClassSerializer/instance Lcom/alibaba/fastjson/serializer/ClassSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/text/SimpleDateFormat
getstatic com/alibaba/fastjson/serializer/DateFormatSerializer/instance Lcom/alibaba/fastjson/serializer/DateFormatSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/Locale
getstatic com/alibaba/fastjson/serializer/LocaleCodec/instance Lcom/alibaba/fastjson/serializer/LocaleCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/Currency
getstatic com/alibaba/fastjson/serializer/CurrencyCodec/instance Lcom/alibaba/fastjson/serializer/CurrencyCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/TimeZone
getstatic com/alibaba/fastjson/serializer/TimeZoneCodec/instance Lcom/alibaba/fastjson/serializer/TimeZoneCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/UUID
getstatic com/alibaba/fastjson/serializer/UUIDCodec/instance Lcom/alibaba/fastjson/serializer/UUIDCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/net/InetAddress
getstatic com/alibaba/fastjson/serializer/InetAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetAddressCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/net/Inet4Address
getstatic com/alibaba/fastjson/serializer/InetAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetAddressCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/net/Inet6Address
getstatic com/alibaba/fastjson/serializer/InetAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetAddressCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/net/InetSocketAddress
getstatic com/alibaba/fastjson/serializer/InetSocketAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/io/File
getstatic com/alibaba/fastjson/serializer/FileCodec/instance Lcom/alibaba/fastjson/serializer/FileCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/net/URI
getstatic com/alibaba/fastjson/serializer/URICodec/instance Lcom/alibaba/fastjson/serializer/URICodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/net/URL
getstatic com/alibaba/fastjson/serializer/URLCodec/instance Lcom/alibaba/fastjson/serializer/URLCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/Appendable
getstatic com/alibaba/fastjson/serializer/AppendableSerializer/instance Lcom/alibaba/fastjson/serializer/AppendableSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/StringBuffer
getstatic com/alibaba/fastjson/serializer/AppendableSerializer/instance Lcom/alibaba/fastjson/serializer/AppendableSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/StringBuilder
getstatic com/alibaba/fastjson/serializer/AppendableSerializer/instance Lcom/alibaba/fastjson/serializer/AppendableSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/regex/Pattern
getstatic com/alibaba/fastjson/serializer/PatternCodec/instance Lcom/alibaba/fastjson/serializer/PatternCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/nio/charset/Charset
getstatic com/alibaba/fastjson/serializer/CharsetCodec/instance Lcom/alibaba/fastjson/serializer/CharsetCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/concurrent/atomic/AtomicBoolean
getstatic com/alibaba/fastjson/serializer/AtomicBooleanSerializer/instance Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/concurrent/atomic/AtomicInteger
getstatic com/alibaba/fastjson/serializer/AtomicIntegerSerializer/instance Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/concurrent/atomic/AtomicLong
getstatic com/alibaba/fastjson/serializer/AtomicLongSerializer/instance Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/concurrent/atomic/AtomicReference
getstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/concurrent/atomic/AtomicIntegerArray
getstatic com/alibaba/fastjson/serializer/AtomicIntegerArrayCodec/instance Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/util/concurrent/atomic/AtomicLongArray
getstatic com/alibaba/fastjson/serializer/AtomicLongArrayCodec/instance Lcom/alibaba/fastjson/serializer/AtomicLongArrayCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/ref/WeakReference
getstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc java/lang/ref/SoftReference
getstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L0:
aload 0
ldc "java.awt.Color"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/ColorCodec/instance Lcom/alibaba/fastjson/serializer/ColorCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc "java.awt.Font"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/FontCodec/instance Lcom/alibaba/fastjson/serializer/FontCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc "java.awt.Point"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/PointCodec/instance Lcom/alibaba/fastjson/serializer/PointCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
ldc "java.awt.Rectangle"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/RectangleCodec/instance Lcom/alibaba/fastjson/serializer/RectangleCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L1:
return
L3:
iconst_0
istore 2
goto L4
L2:
astore 3
return
.limit locals 4
.limit stack 3
.end method

.method public static final getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
getstatic com/alibaba/fastjson/serializer/SerializeConfig/globalInstance Lcom/alibaba/fastjson/serializer/SerializeConfig;
areturn
.limit locals 0
.limit stack 1
.end method

.method public final createASMSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.signature "(Ljava/lang/Class<*>;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
.throws java/lang/Exception
aload 0
getfield com/alibaba/fastjson/serializer/SerializeConfig/asmFactory Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
aload 1
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory/createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
areturn
.limit locals 2
.limit stack 2
.end method

.method public createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.signature "(Ljava/lang/Class<*>;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
.catch java/lang/ClassCastException from L0 to L1 using L2
.catch java/lang/Throwable from L0 to L1 using L3
aload 1
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifne L4
new com/alibaba/fastjson/serializer/JavaBeanSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/JavaBeanSerializer/<init>(Ljava/lang/Class;)V
areturn
L4:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeConfig/asm Z
istore 2
iload 2
ifeq L5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeConfig/asmFactory Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
aload 1
invokevirtual com/alibaba/fastjson/serializer/ASMSerializerFactory/isExternalClass(Ljava/lang/Class;)Z
ifne L6
L5:
aload 1
ldc java/io/Serializable
if_acmpeq L6
aload 1
ldc java/lang/Object
if_acmpne L7
L6:
iconst_0
istore 2
L7:
aload 1
ldc com/alibaba/fastjson/annotation/JSONType
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONType
astore 4
iload 2
istore 3
aload 4
ifnull L8
iload 2
istore 3
aload 4
invokeinterface com/alibaba/fastjson/annotation/JSONType/asm()Z 0
ifne L8
iconst_0
istore 3
L8:
iload 3
ifeq L9
L0:
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/createASMSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 4
L1:
aload 4
areturn
L2:
astore 4
new com/alibaba/fastjson/serializer/JavaBeanSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/JavaBeanSerializer/<init>(Ljava/lang/Class;)V
areturn
L3:
astore 4
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create asm serializer error, class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 4
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L9:
new com/alibaba/fastjson/serializer/JavaBeanSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/JavaBeanSerializer/<init>(Ljava/lang/Class;)V
areturn
.limit locals 5
.limit stack 4
.end method

.method public getTypeKey()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/SerializeConfig/typeKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isAsmEnable()Z
aload 0
getfield com/alibaba/fastjson/serializer/SerializeConfig/asm Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAsmEnable(Z)V
aload 0
iload 1
putfield com/alibaba/fastjson/serializer/SerializeConfig/asm Z
return
.limit locals 2
.limit stack 2
.end method

.method public setTypeKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SerializeConfig/typeKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
