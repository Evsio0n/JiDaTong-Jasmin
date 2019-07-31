.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/ParserConfig
.super java/lang/Object

.field private static 'global' Lcom/alibaba/fastjson/parser/ParserConfig;

.field private 'asmEnable' Z

.field private final 'derializers' Lcom/alibaba/fastjson/util/IdentityHashMap; signature "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;>;"

.field private final 'primitiveClasses' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/Class<*>;>;"

.field protected final 'symbolTable' Lcom/alibaba/fastjson/parser/SymbolTable;

.method static <clinit>()V
new com/alibaba/fastjson/parser/ParserConfig
dup
invokespecial com/alibaba/fastjson/parser/ParserConfig/<init>()V
putstatic com/alibaba/fastjson/parser/ParserConfig/global Lcom/alibaba/fastjson/parser/ParserConfig;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
aload 0
new com/alibaba/fastjson/util/IdentityHashMap
dup
invokespecial com/alibaba/fastjson/util/IdentityHashMap/<init>()V
putfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
invokestatic com/alibaba/fastjson/util/ASMUtils/isAndroid()Z
ifne L3
iconst_1
istore 1
L4:
aload 0
iload 1
putfield com/alibaba/fastjson/parser/ParserConfig/asmEnable Z
aload 0
new com/alibaba/fastjson/parser/SymbolTable
dup
invokespecial com/alibaba/fastjson/parser/SymbolTable/<init>()V
putfield com/alibaba/fastjson/parser/ParserConfig/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Boolean
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Character/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Character
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Byte
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Short/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Short
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Integer
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Long/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Long
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Float/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Float
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
getstatic java/lang/Double/TYPE Ljava/lang/Class;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/Double
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/math/BigInteger
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/math/BigDecimal
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/lang/String
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/util/Date
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/sql/Date
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/sql/Time
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
ldc java/sql/Timestamp
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/text/SimpleDateFormat
getstatic com/alibaba/fastjson/parser/deserializer/DateFormatDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/sql/Timestamp
getstatic com/alibaba/fastjson/parser/deserializer/TimestampDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/sql/Date
getstatic com/alibaba/fastjson/parser/deserializer/SqlDateDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/sql/Time
getstatic com/alibaba/fastjson/parser/deserializer/TimeDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/Date
getstatic com/alibaba/fastjson/parser/deserializer/DateDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/Calendar
getstatic com/alibaba/fastjson/serializer/CalendarCodec/instance Lcom/alibaba/fastjson/serializer/CalendarCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc com/alibaba/fastjson/JSONObject
getstatic com/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc com/alibaba/fastjson/JSONArray
getstatic com/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/Map
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/HashMap
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/LinkedHashMap
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/TreeMap
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/ConcurrentMap
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/ConcurrentHashMap
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/Collection
getstatic com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/List
getstatic com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/ArrayList
getstatic com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Object
getstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/String
getstatic com/alibaba/fastjson/serializer/StringCodec/instance Lcom/alibaba/fastjson/serializer/StringCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Character/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/CharacterCodec/instance Lcom/alibaba/fastjson/serializer/CharacterCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Character
getstatic com/alibaba/fastjson/serializer/CharacterCodec/instance Lcom/alibaba/fastjson/serializer/CharacterCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Byte
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Short/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Short
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Integer
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Long/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/LongCodec/instance Lcom/alibaba/fastjson/serializer/LongCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Long
getstatic com/alibaba/fastjson/serializer/LongCodec/instance Lcom/alibaba/fastjson/serializer/LongCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/math/BigInteger
getstatic com/alibaba/fastjson/serializer/BigIntegerCodec/instance Lcom/alibaba/fastjson/serializer/BigIntegerCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/math/BigDecimal
getstatic com/alibaba/fastjson/serializer/BigDecimalCodec/instance Lcom/alibaba/fastjson/serializer/BigDecimalCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Float/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/FloatCodec/instance Lcom/alibaba/fastjson/serializer/FloatCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Float
getstatic com/alibaba/fastjson/serializer/FloatCodec/instance Lcom/alibaba/fastjson/serializer/FloatCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Double/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Double
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/BooleanCodec/instance Lcom/alibaba/fastjson/serializer/BooleanCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Boolean
getstatic com/alibaba/fastjson/serializer/BooleanCodec/instance Lcom/alibaba/fastjson/serializer/BooleanCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Class
getstatic com/alibaba/fastjson/parser/deserializer/ClassDerializer/instance Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc [C
getstatic com/alibaba/fastjson/parser/deserializer/CharArrayDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/atomic/AtomicBoolean
getstatic com/alibaba/fastjson/serializer/BooleanCodec/instance Lcom/alibaba/fastjson/serializer/BooleanCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/atomic/AtomicInteger
getstatic com/alibaba/fastjson/serializer/IntegerCodec/instance Lcom/alibaba/fastjson/serializer/IntegerCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/atomic/AtomicLong
getstatic com/alibaba/fastjson/serializer/LongCodec/instance Lcom/alibaba/fastjson/serializer/LongCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/atomic/AtomicReference
getstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/ref/WeakReference
getstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/ref/SoftReference
getstatic com/alibaba/fastjson/serializer/ReferenceCodec/instance Lcom/alibaba/fastjson/serializer/ReferenceCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/UUID
getstatic com/alibaba/fastjson/serializer/UUIDCodec/instance Lcom/alibaba/fastjson/serializer/UUIDCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/TimeZone
getstatic com/alibaba/fastjson/serializer/TimeZoneCodec/instance Lcom/alibaba/fastjson/serializer/TimeZoneCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/Locale
getstatic com/alibaba/fastjson/serializer/LocaleCodec/instance Lcom/alibaba/fastjson/serializer/LocaleCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/Currency
getstatic com/alibaba/fastjson/serializer/CurrencyCodec/instance Lcom/alibaba/fastjson/serializer/CurrencyCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/net/InetAddress
getstatic com/alibaba/fastjson/serializer/InetAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetAddressCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/net/Inet4Address
getstatic com/alibaba/fastjson/serializer/InetAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetAddressCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/net/Inet6Address
getstatic com/alibaba/fastjson/serializer/InetAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetAddressCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/net/InetSocketAddress
getstatic com/alibaba/fastjson/serializer/InetSocketAddressCodec/instance Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/io/File
getstatic com/alibaba/fastjson/serializer/FileCodec/instance Lcom/alibaba/fastjson/serializer/FileCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/net/URI
getstatic com/alibaba/fastjson/serializer/URICodec/instance Lcom/alibaba/fastjson/serializer/URICodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/net/URL
getstatic com/alibaba/fastjson/serializer/URLCodec/instance Lcom/alibaba/fastjson/serializer/URLCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/regex/Pattern
getstatic com/alibaba/fastjson/serializer/PatternCodec/instance Lcom/alibaba/fastjson/serializer/PatternCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/nio/charset/Charset
getstatic com/alibaba/fastjson/serializer/CharsetCodec/instance Lcom/alibaba/fastjson/serializer/CharsetCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Number
getstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/atomic/AtomicIntegerArray
getstatic com/alibaba/fastjson/serializer/AtomicIntegerArrayCodec/instance Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/util/concurrent/atomic/AtomicLongArray
getstatic com/alibaba/fastjson/serializer/AtomicLongArrayCodec/instance Lcom/alibaba/fastjson/serializer/AtomicLongArrayCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/StackTraceElement
getstatic com/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/io/Serializable
getstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Cloneable
getstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/lang/Comparable
getstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc java/io/Closeable
getstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L0:
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc "java.awt.Point"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/PointCodec/instance Lcom/alibaba/fastjson/serializer/PointCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc "java.awt.Font"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/FontCodec/instance Lcom/alibaba/fastjson/serializer/FontCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc "java.awt.Rectangle"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/RectangleCodec/instance Lcom/alibaba/fastjson/serializer/RectangleCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
ldc "java.awt.Color"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
getstatic com/alibaba/fastjson/serializer/ColorCodec/instance Lcom/alibaba/fastjson/serializer/ColorCodec;
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L1:
return
L3:
iconst_0
istore 1
goto L4
L2:
astore 2
return
.limit locals 3
.limit stack 3
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.signature "(Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/reflect/Field;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 2
L0:
aload 2
astore 3
aload 2
ifnonnull L1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "m_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 3
L1:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method private static getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.signature "(Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/reflect/Field;"
aload 0
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 4
aload 4
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 4
iload 2
aaload
astore 5
aload 1
aload 5
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 5
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ifnull L3
aload 0
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ldc java/lang/Object
if_acmpeq L3
aload 0
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
areturn
L3:
aconst_null
areturn
.limit locals 6
.limit stack 2
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
getstatic com/alibaba/fastjson/parser/ParserConfig/global Lcom/alibaba/fastjson/parser/ParserConfig;
areturn
.limit locals 0
.limit stack 1
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/asmEnable Z
istore 5
iload 5
istore 4
iload 5
ifeq L3
aload 2
astore 6
L4:
aload 6
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifne L5
iconst_0
istore 4
L3:
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
ldc java/lang/Class
if_acmpne L6
iconst_0
istore 4
L6:
invokestatic com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/isExternalClass(Ljava/lang/Class;)Z
ifeq L7
iconst_0
istore 4
L7:
iload 4
ifne L0
aload 0
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
L5:
aload 6
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 7
iload 5
istore 4
aload 7
ldc java/lang/Object
if_acmpeq L3
aload 7
astore 6
aload 7
ifnonnull L4
iload 5
istore 4
goto L3
L0:
invokestatic com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 0
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
.limit locals 8
.limit stack 4
.end method

.method public createFieldDeserializerWithoutASM(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 4
aload 4
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
if_acmpeq L0
aload 4
ldc java/lang/Boolean
if_acmpne L1
L0:
new com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
L1:
aload 4
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpeq L2
aload 4
ldc java/lang/Integer
if_acmpne L3
L2:
new com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
L3:
aload 4
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpeq L4
aload 4
ldc java/lang/Long
if_acmpne L5
L4:
new com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/LongFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
L5:
aload 4
ldc java/lang/String
if_acmpne L6
new com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/StringFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
L6:
aload 4
ldc java/util/List
if_acmpeq L7
aload 4
ldc java/util/ArrayList
if_acmpne L8
L7:
new com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
L8:
new com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
areturn
.limit locals 5
.limit stack 5
.end method

.method public createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch com/alibaba/fastjson/asm/ASMException from L0 to L1 using L3
.catch java/lang/Exception from L0 to L1 using L4
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/asmEnable Z
istore 4
iload 4
istore 3
iload 4
ifeq L5
aload 1
astore 5
L6:
aload 5
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifne L7
iconst_0
istore 3
L5:
aload 1
invokevirtual java/lang/Class/getTypeParameters()[Ljava/lang/reflect/TypeVariable;
arraylength
ifeq L8
iconst_0
istore 3
L8:
iload 3
istore 4
invokestatic com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
aload 1
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/isExternalClass(Ljava/lang/Class;)Z
ifeq L9
iconst_0
istore 4
L9:
iload 4
istore 3
iload 4
ifeq L10
iload 4
istore 3
aload 1
invokevirtual java/lang/Class/isInterface()Z
ifeq L11
iconst_0
istore 3
L11:
aload 1
aload 2
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
astore 5
aload 5
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
sipush 200
if_icmple L12
iconst_0
istore 3
L12:
iload 3
istore 4
aload 5
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getDefaultConstructor()Ljava/lang/reflect/Constructor;
ifnonnull L13
iload 3
istore 4
aload 1
invokevirtual java/lang/Class/isInterface()Z
ifne L13
iconst_0
istore 4
L13:
aload 5
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L14:
iload 4
istore 3
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 6
aload 6
invokevirtual com/alibaba/fastjson/util/FieldInfo/isGetOnly()Z
ifeq L15
iconst_0
istore 3
L10:
iload 3
istore 4
iload 3
ifeq L16
iload 3
istore 4
aload 1
invokevirtual java/lang/Class/isMemberClass()Z
ifeq L16
iload 3
istore 4
aload 1
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L16
iconst_0
istore 4
L16:
iload 4
ifne L0
new com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
dup
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
areturn
L7:
aload 5
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 6
iload 4
istore 3
aload 6
ldc java/lang/Object
if_acmpeq L5
aload 6
astore 5
aload 6
ifnonnull L6
iload 4
istore 3
goto L5
L15:
aload 6
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
astore 6
aload 6
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isPublic(I)Z
ifne L17
iconst_0
istore 3
goto L10
L17:
aload 6
invokevirtual java/lang/Class/isMemberClass()Z
ifeq L14
aload 6
invokevirtual java/lang/Class/getModifiers()I
invokestatic java/lang/reflect/Modifier/isStatic(I)Z
ifne L14
iconst_0
istore 4
goto L14
L0:
invokestatic com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/getInstance()Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory/createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 5
L1:
aload 5
areturn
L2:
astore 5
new com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
dup
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
areturn
L3:
astore 5
new com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
dup
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
areturn
L4:
astore 2
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create asm deserializer error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method public getDerializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
.signature "()Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;>;"
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.signature "(Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 2
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
astore 3
aload 3
ifnull L5
aload 3
areturn
L5:
aload 2
astore 3
aload 2
ifnonnull L6
aload 1
astore 3
L6:
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 3
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
astore 2
aload 2
ifnull L7
aload 2
areturn
L7:
aload 1
ldc com/alibaba/fastjson/annotation/JSONType
invokevirtual java/lang/Class/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONType
astore 4
aload 4
ifnull L8
aload 4
invokeinterface com/alibaba/fastjson/annotation/JSONType/mappingTo()Ljava/lang/Class; 0
astore 4
aload 4
ldc java/lang/Void
if_acmpeq L8
aload 0
aload 4
aload 4
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
areturn
L8:
aload 3
instanceof java/lang/reflect/WildcardType
ifne L9
aload 3
instanceof java/lang/reflect/TypeVariable
ifne L9
aload 3
instanceof java/lang/reflect/ParameterizedType
ifeq L10
L9:
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 1
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
astore 2
L10:
aload 2
ifnull L11
aload 2
areturn
L11:
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
astore 2
L0:
ldc com/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer
aload 2
invokestatic com/alibaba/fastjson/util/ServiceLoader/load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer
astore 4
aload 4
invokeinterface com/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer/getAutowiredFor()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 5
L3:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/reflect/Type
astore 6
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 6
aload 4
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L4:
goto L3
L2:
astore 2
L12:
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 3
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
astore 2
aload 2
ifnull L13
aload 2
areturn
L13:
aload 1
invokevirtual java/lang/Class/isEnum()Z
ifeq L14
new com/alibaba/fastjson/parser/deserializer/EnumDeserializer
dup
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/EnumDeserializer/<init>(Ljava/lang/Class;)V
astore 1
L15:
aload 0
aload 3
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
aload 1
areturn
L14:
aload 1
invokevirtual java/lang/Class/isArray()Z
ifeq L16
getstatic com/alibaba/fastjson/parser/deserializer/ArrayDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;
astore 1
goto L15
L16:
aload 1
ldc java/util/Set
if_acmpeq L17
aload 1
ldc java/util/HashSet
if_acmpeq L17
aload 1
ldc java/util/Collection
if_acmpeq L17
aload 1
ldc java/util/List
if_acmpeq L17
aload 1
ldc java/util/ArrayList
if_acmpne L18
L17:
getstatic com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;
astore 1
goto L15
L18:
ldc java/util/Collection
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L19
getstatic com/alibaba/fastjson/parser/deserializer/CollectionDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;
astore 1
goto L15
L19:
ldc java/util/Map
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L20
getstatic com/alibaba/fastjson/parser/deserializer/MapDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
astore 1
goto L15
L20:
ldc java/lang/Throwable
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L21
new com/alibaba/fastjson/parser/deserializer/ThrowableDeserializer
dup
aload 0
aload 1
invokespecial com/alibaba/fastjson/parser/deserializer/ThrowableDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
astore 1
goto L15
L21:
aload 0
aload 1
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 1
goto L15
.limit locals 7
.limit stack 4
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 1
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
astore 2
aload 2
ifnull L0
aload 2
areturn
L0:
aload 1
instanceof java/lang/Class
ifeq L1
aload 0
aload 1
checkcast java/lang/Class
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
areturn
L1:
aload 1
instanceof java/lang/reflect/ParameterizedType
ifeq L2
aload 1
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getRawType()Ljava/lang/reflect/Type; 0
astore 2
aload 2
instanceof java/lang/Class
ifeq L3
aload 0
aload 2
checkcast java/lang/Class
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
areturn
L3:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
areturn
L2:
getstatic com/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;
.signature "(Ljava/lang/Class<*>;)Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
astore 1
aload 1
instanceof com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
ifeq L0
aload 1
checkcast com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/getFieldDeserializerMap()Ljava/util/Map;
areturn
L0:
aload 1
instanceof com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
ifeq L1
aload 1
checkcast com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/getInnterSerializer()Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getFieldDeserializerMap()Ljava/util/Map;
areturn
L1:
invokestatic java/util/Collections/emptyMap()Ljava/util/Map;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/symbolTable Lcom/alibaba/fastjson/parser/SymbolTable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isAsmEnable()Z
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/asmEnable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/primitiveClasses Ljava/util/Set;
aload 1
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
aload 0
getfield com/alibaba/fastjson/parser/ParserConfig/derializers Lcom/alibaba/fastjson/util/IdentityHashMap;
aload 1
aload 2
invokevirtual com/alibaba/fastjson/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 3
.end method

.method public setAsmEnable(Z)V
aload 0
iload 1
putfield com/alibaba/fastjson/parser/ParserConfig/asmEnable Z
return
.limit locals 2
.limit stack 2
.end method
