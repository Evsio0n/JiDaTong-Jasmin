.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field private 'beanInfo' Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

.field private final 'clazz' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private final 'feildDeserializerMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"

.field private final 'fieldDeserializers' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"

.field private final 'sortedFieldDeserializers' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;)V"
aload 0
aload 1
aload 2
aload 2
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Ljava/lang/reflect/Type;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/IdentityHashMap
dup
invokespecial java/util/IdentityHashMap/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/feildDeserializerMap Ljava/util/Map;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/fieldDeserializers Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/sortedFieldDeserializers Ljava/util/List;
aload 0
aload 2
putfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/clazz Ljava/lang/Class;
aload 0
aload 2
aload 3
invokestatic com/alibaba/fastjson/util/DeserializeBeanInfo/computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
putfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
aload 1
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/addFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
goto L0
L1:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getSortedFieldList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 2
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/feildDeserializerMap Ljava/util/Map;
aload 2
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/String/intern()Ljava/lang/String;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 2
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/sortedFieldDeserializers Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L3:
return
.limit locals 4
.limit stack 4
.end method

.method private addFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)V"
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/String/intern()Ljava/lang/String;
astore 4
aload 0
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
astore 1
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/feildDeserializerMap Ljava/util/Map;
aload 4
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/fieldDeserializers Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 5
.limit stack 4
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
aload 1
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
.limit locals 4
.limit stack 4
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L2
aload 2
instanceof java/lang/Class
ifeq L8
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/clazz Ljava/lang/Class;
invokevirtual java/lang/Class/isInterface()Z
ifeq L8
aload 2
checkcast java/lang/Class
astore 1
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
astore 2
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
astore 3
aload 2
iconst_1
anewarray java/lang/Class
dup
iconst_0
aload 1
aastore
aload 3
invokestatic java/lang/reflect/Proxy/newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
areturn
L8:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getDefaultConstructor()Ljava/lang/reflect/Constructor;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getDefaultConstructor()Ljava/lang/reflect/Constructor;
astore 2
aload 2
invokevirtual java/lang/reflect/Constructor/getParameterTypes()[Ljava/lang/Class;
arraylength
ifne L6
aload 2
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L1:
aload 1
getstatic com/alibaba/fastjson/parser/Feature/InitStringFieldAsEmpty Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L9
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L10:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 3
aload 3
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
ldc java/lang/String
if_acmpne L10
L3:
aload 3
aload 2
ldc ""
invokevirtual com/alibaba/fastjson/util/FieldInfo/set(Ljava/lang/Object;Ljava/lang/Object;)V
L4:
goto L10
L5:
astore 1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create instance error, class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/clazz Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L6:
aload 2
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
aastore
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L7:
goto L1
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create instance error, class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/clazz Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L9:
aload 2
areturn
.limit locals 4
.limit stack 5
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 0
aload 1
aload 2
aload 3
aconst_null
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 5
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)TT;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L23 to L2 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L30
.catch all from L31 to L32 using L30
.catch all from L33 to L34 using L30
.catch all from L35 to L36 using L2
.catch all from L37 to L38 using L2
.catch all from L39 to L40 using L30
.catch all from L41 to L42 using L30
.catch all from L43 to L44 using L30
.catch all from L45 to L46 using L30
.catch all from L47 to L48 using L30
.catch all from L49 to L50 using L30
.catch all from L51 to L52 using L30
.catch all from L53 to L54 using L30
.catch all from L55 to L56 using L30
.catch all from L57 to L58 using L30
.catch all from L59 to L60 using L30
.catch all from L61 to L62 using L30
.catch all from L63 to L64 using L30
.catch all from L65 to L66 using L30
.catch all from L67 to L68 using L30
.catch all from L69 to L70 using L30
.catch all from L71 to L72 using L30
.catch all from L73 to L74 using L30
.catch all from L75 to L76 using L30
.catch all from L77 to L78 using L30
.catch all from L79 to L80 using L30
.catch all from L81 to L82 using L30
.catch all from L83 to L84 using L30
.catch all from L85 to L86 using L30
.catch all from L87 to L88 using L30
.catch all from L89 to L90 using L30
.catch all from L91 to L92 using L30
.catch all from L93 to L94 using L30
.catch all from L95 to L96 using L30
.catch all from L97 to L98 using L30
.catch all from L99 to L100 using L30
.catch all from L101 to L102 using L30
.catch all from L103 to L104 using L30
.catch all from L105 to L106 using L30
.catch all from L107 to L108 using L30
.catch all from L109 to L110 using L30
.catch all from L111 to L112 using L30
.catch all from L113 to L114 using L30
.catch all from L115 to L116 using L30
.catch all from L117 to L118 using L30
.catch all from L119 to L120 using L30
.catch all from L121 to L122 using L30
.catch all from L123 to L124 using L2
.catch all from L125 to L126 using L2
.catch all from L127 to L128 using L2
.catch all from L129 to L130 using L2
.catch all from L131 to L132 using L2
.catch all from L133 to L134 using L2
.catch all from L135 to L136 using L2
.catch all from L137 to L138 using L2
.catch all from L139 to L140 using L2
.catch all from L141 to L142 using L2
.catch all from L143 to L144 using L2
.catch all from L145 to L146 using L2
.catch all from L147 to L148 using L2
.catch all from L149 to L150 using L2
.catch all from L151 to L152 using L2
.catch java/lang/Exception from L153 to L154 using L155
.catch all from L153 to L154 using L2
.catch all from L156 to L157 using L2
.catch all from L158 to L159 using L2
.catch java/lang/Exception from L160 to L161 using L162
.catch all from L160 to L161 using L2
.catch all from L163 to L164 using L2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 16
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L165
aload 16
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aconst_null
areturn
L165:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 7
aload 7
astore 11
aload 4
ifnull L166
aload 7
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 11
L166:
aconst_null
astore 10
aconst_null
astore 9
aconst_null
astore 15
aload 9
astore 8
aload 4
astore 7
L0:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L167
L1:
aload 9
astore 8
aload 4
astore 7
L3:
aload 16
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L4:
aload 4
astore 3
aload 4
ifnonnull L6
aload 9
astore 8
aload 4
astore 7
L5:
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 3
L6:
iconst_0
ifeq L168
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L168:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 3
areturn
L167:
aload 9
astore 8
aload 4
astore 7
L7:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpne L169
L8:
aload 9
astore 8
aload 4
astore 7
L9:
aload 16
getstatic com/alibaba/fastjson/parser/Feature/SupportArrayToBean Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifeq L169
L10:
aload 9
astore 8
aload 4
astore 7
L11:
aload 0
aload 1
aload 2
aload 3
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L12:
iconst_0
ifeq L170
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L170:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
areturn
L169:
aload 9
astore 8
aload 4
astore 7
L13:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 12
if_icmpeq L171
L14:
aload 9
astore 8
aload 4
astore 7
L15:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L171
L16:
aload 9
astore 8
aload 4
astore 7
L17:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
ldc "syntax error, expect {, actual "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/tokenName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc ", pos "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/pos()I 0
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
astore 2
L18:
aload 9
astore 8
aload 4
astore 7
L19:
aload 3
instanceof java/lang/String
ifeq L22
L20:
aload 9
astore 8
aload 4
astore 7
L21:
aload 2
ldc ", fieldName "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 3
invokevirtual java/lang/StringBuffer/append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
pop
L22:
aload 9
astore 8
aload 4
astore 7
L23:
new com/alibaba/fastjson/JSONException
dup
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 2
L172:
aload 8
ifnull L173
aload 8
aload 7
invokevirtual com/alibaba/fastjson/parser/ParseContext/setObject(Ljava/lang/Object;)V
L173:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
athrow
L171:
aload 9
astore 8
aload 4
astore 7
aload 15
astore 14
aload 10
astore 12
aload 4
astore 13
L24:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getResolveStatus()I
iconst_2
if_icmpne L174
L25:
aload 9
astore 8
aload 4
astore 7
L26:
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L27:
aload 4
astore 13
aload 10
astore 12
aload 15
astore 14
L174:
aload 14
astore 4
aload 13
astore 7
aload 12
astore 8
L175:
aload 7
astore 9
L28:
aload 16
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String; 1
astore 13
L29:
aload 13
ifnonnull L42
aload 7
astore 9
L31:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L176
L32:
aload 7
astore 9
L33:
aload 16
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L34:
aload 7
astore 9
aload 8
astore 10
L177:
aload 9
astore 7
aload 9
ifnonnull L178
aload 4
ifnonnull L142
aload 10
astore 8
aload 9
astore 7
L35:
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 4
L36:
aload 10
astore 2
aload 10
ifnonnull L38
aload 10
astore 8
aload 4
astore 7
L37:
aload 1
aload 11
aload 4
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
astore 2
L38:
aload 2
ifnull L179
aload 2
aload 4
invokevirtual com/alibaba/fastjson/parser/ParseContext/setObject(Ljava/lang/Object;)V
L179:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 4
areturn
L176:
aload 7
astore 9
L39:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L42
L40:
aload 7
astore 9
L41:
aload 1
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L175
L42:
ldc "$ref"
aload 13
if_acmpne L180
aload 7
astore 9
L43:
aload 16
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
L44:
aload 7
astore 9
L45:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L181
L46:
aload 7
astore 9
L47:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 4
L48:
aload 7
astore 9
L49:
ldc "@"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L58
L50:
aload 7
astore 9
L51:
aload 11
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 7
L52:
aload 7
astore 9
L53:
aload 16
bipush 13
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L54:
aload 7
astore 9
L55:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpeq L90
L56:
aload 7
astore 9
L57:
new com/alibaba/fastjson/JSONException
dup
ldc "illegal ref"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L58:
aload 7
astore 9
L59:
ldc ".."
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L182
L60:
aload 7
astore 9
L61:
aload 11
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 2
L62:
aload 7
astore 9
L63:
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
ifnull L183
L64:
aload 7
astore 9
L65:
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 7
L66:
goto L52
L183:
aload 7
astore 9
L67:
aload 1
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 2
aload 4
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
L68:
aload 7
astore 9
L69:
aload 1
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L70:
goto L52
L182:
aload 7
astore 9
L71:
ldc "$"
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L184
L72:
aload 11
astore 2
L185:
aload 7
astore 9
L73:
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L186
L74:
aload 7
astore 9
L75:
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;
astore 2
L76:
goto L185
L186:
aload 7
astore 9
L77:
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
ifnull L187
L78:
aload 7
astore 9
L79:
aload 2
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 7
L80:
goto L52
L187:
aload 7
astore 9
L81:
aload 1
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 2
aload 4
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
L82:
aload 7
astore 9
L83:
aload 1
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L84:
goto L52
L184:
aload 7
astore 9
L85:
aload 1
new com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
dup
aload 11
aload 4
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/<init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
L86:
aload 7
astore 9
L87:
aload 1
iconst_1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setResolveStatus(I)V
L88:
goto L52
L181:
aload 7
astore 9
L89:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal ref, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L90:
aload 7
astore 9
L91:
aload 16
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L92:
aload 7
astore 9
L93:
aload 1
aload 11
aload 7
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
pop
L94:
aload 8
ifnull L188
aload 8
aload 7
invokevirtual com/alibaba/fastjson/parser/ParseContext/setObject(Ljava/lang/Object;)V
L188:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 7
areturn
L180:
aload 7
astore 9
L95:
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
aload 13
if_acmpne L118
L96:
aload 7
astore 9
L97:
aload 16
iconst_4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
L98:
aload 7
astore 9
L99:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_4
if_icmpne L189
L100:
aload 7
astore 9
L101:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/stringVal()Ljava/lang/String; 0
astore 10
L102:
aload 7
astore 9
L103:
aload 16
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L104:
aload 7
astore 9
L105:
aload 2
instanceof java/lang/Class
ifeq L190
L106:
aload 7
astore 9
L107:
aload 10
aload 2
checkcast java/lang/Class
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L190
L108:
aload 7
astore 9
L109:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L175
L110:
aload 7
astore 9
L111:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L112:
aload 8
astore 10
aload 7
astore 9
goto L177
L190:
aload 7
astore 9
L113:
aload 10
invokestatic com/alibaba/fastjson/util/TypeUtils/loadClass(Ljava/lang/String;)Ljava/lang/Class;
astore 2
L114:
aload 7
astore 9
L115:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 2
invokevirtual com/alibaba/fastjson/parser/ParserConfig/getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
aload 1
aload 2
aload 3
invokeinterface com/alibaba/fastjson/parser/deserializer/ObjectDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object; 3
astore 2
L116:
aload 8
ifnull L191
aload 8
aload 7
invokevirtual com/alibaba/fastjson/parser/ParseContext/setObject(Ljava/lang/Object;)V
L191:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 2
areturn
L189:
aload 7
astore 9
L117:
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L118:
aload 7
ifnonnull L192
aload 4
ifnonnull L192
aload 7
astore 9
L119:
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 10
L120:
aload 10
ifnonnull L164
aload 10
astore 9
L121:
new java/util/HashMap
dup
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/fieldDeserializers Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokespecial java/util/HashMap/<init>(I)V
astore 4
L122:
aload 10
astore 7
L123:
aload 1
aload 11
aload 10
aload 3
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
astore 12
L124:
aload 10
astore 9
aload 12
astore 10
L193:
aload 10
astore 8
aload 9
astore 7
L125:
aload 0
aload 1
aload 13
aload 9
aload 2
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
ifne L194
L126:
aload 10
astore 8
aload 9
astore 7
aload 4
astore 14
aload 10
astore 12
aload 9
astore 13
L127:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L174
L128:
aload 10
astore 8
aload 9
astore 7
L129:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
L130:
goto L177
L194:
aload 10
astore 8
aload 9
astore 7
L131:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpne L195
L132:
aload 10
astore 8
aload 9
astore 7
goto L175
L195:
aload 10
astore 8
aload 9
astore 7
L133:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 13
if_icmpne L196
L134:
aload 10
astore 8
aload 9
astore 7
L135:
aload 16
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
L136:
goto L177
L196:
aload 10
astore 8
aload 9
astore 7
L137:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 18
if_icmpeq L140
L138:
aload 10
astore 8
aload 9
astore 7
L139:
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_1
if_icmpne L197
L140:
aload 10
astore 8
aload 9
astore 7
L141:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "syntax error, unexpect token "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L142:
aload 10
astore 8
aload 9
astore 7
L143:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
astore 3
L144:
aload 10
astore 8
aload 9
astore 7
L145:
aload 3
invokeinterface java/util/List/size()I 0
istore 6
L146:
aload 10
astore 8
aload 9
astore 7
L147:
iload 6
anewarray java/lang/Object
astore 2
L148:
iconst_0
istore 5
L198:
iload 5
iload 6
if_icmpge L199
aload 10
astore 8
aload 9
astore 7
L149:
aload 2
iload 5
aload 4
aload 3
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/util/FieldInfo
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
aastore
L150:
iload 5
iconst_1
iadd
istore 5
goto L198
L199:
aload 10
astore 8
aload 9
astore 7
L151:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getCreatorConstructor()Ljava/lang/reflect/Constructor;
astore 3
L152:
aload 3
ifnull L157
aload 10
astore 8
aload 9
astore 7
L153:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getCreatorConstructor()Ljava/lang/reflect/Constructor;
aload 2
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L154:
aload 2
astore 7
L178:
aload 10
ifnull L200
aload 10
aload 7
invokevirtual com/alibaba/fastjson/parser/ParseContext/setObject(Ljava/lang/Object;)V
L200:
aload 1
aload 11
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 7
areturn
L155:
astore 2
aload 10
astore 8
aload 9
astore 7
L156:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create instance error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getCreatorConstructor()Ljava/lang/reflect/Constructor;
invokevirtual java/lang/reflect/Constructor/toGenericString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L157:
aload 10
astore 8
aload 9
astore 7
L158:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFactoryMethod()Ljava/lang/reflect/Method;
astore 3
L159:
aload 9
astore 7
aload 3
ifnull L178
aload 10
astore 8
aload 9
astore 7
L160:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFactoryMethod()Ljava/lang/reflect/Method;
aconst_null
aload 2
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L161:
aload 2
astore 7
goto L178
L162:
astore 2
aload 10
astore 8
aload 9
astore 7
L163:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create factory method error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFactoryMethod()Ljava/lang/reflect/Method;
invokevirtual java/lang/reflect/Method/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L164:
goto L122
L192:
aload 8
astore 10
aload 7
astore 9
goto L193
L30:
astore 2
aload 9
astore 7
goto L172
L197:
aload 10
astore 8
aload 9
astore 7
goto L175
.limit locals 17
.limit stack 6
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)TT;"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 3
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 14
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 2
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/sortedFieldDeserializers Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 7
iconst_0
istore 6
L1:
iload 6
iload 7
if_icmpge L2
iload 6
iload 7
iconst_1
isub
if_icmpne L3
bipush 93
istore 5
L4:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/sortedFieldDeserializers Ljava/util/List;
iload 6
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 4
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFieldClass()Ljava/lang/Class;
astore 8
aload 8
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
if_acmpne L5
aload 4
aload 2
aload 3
iload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanInt(C)I 1
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;I)V
L6:
iload 6
iconst_1
iadd
istore 6
goto L1
L3:
bipush 44
istore 5
goto L4
L5:
aload 8
ldc java/lang/String
if_acmpne L7
aload 4
aload 2
aload 3
iload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanString(C)Ljava/lang/String; 1
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/String;)V
goto L6
L7:
aload 8
getstatic java/lang/Long/TYPE Ljava/lang/Class;
if_acmpne L8
aload 4
aload 2
aload 3
iload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanLong(C)J 1
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;J)V
goto L6
L8:
aload 8
invokevirtual java/lang/Class/isEnum()Z
ifeq L9
aload 4
aload 2
aload 3
aload 8
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
iload 5
invokeinterface com/alibaba/fastjson/parser/JSONLexer/scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum; 3
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
goto L6
L9:
aload 3
bipush 14
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 4
aload 2
aload 1
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFieldType()Ljava/lang/reflect/Type;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
iload 5
bipush 93
if_icmpne L10
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 15
if_icmpeq L11
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L11:
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
goto L6
L10:
iload 5
bipush 44
if_icmpne L6
aload 3
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 16
if_icmpeq L6
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 3
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
areturn
.limit locals 9
.limit stack 6
.end method

.method public getClazz()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/clazz Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFastMatchToken()I
bipush 12
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldDeserializerMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/feildDeserializerMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 4
aload 4
getstatic com/alibaba/fastjson/parser/Feature/IgnoreNotMatch Lcom/alibaba/fastjson/parser/Feature;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z 1
ifne L0
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "setter not found, class "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/clazz Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", property "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 4
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon()V 0
aload 1
aload 2
aload 3
invokestatic com/alibaba/fastjson/serializer/FilterUtils/getExtratype(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;
astore 4
aload 4
ifnonnull L1
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 4
L2:
aload 1
aload 2
aload 3
aload 4
invokestatic com/alibaba/fastjson/serializer/FilterUtils/processExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
return
L1:
aload 1
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 4
goto L2
.limit locals 5
.limit stack 4
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Z"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 8
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/feildDeserializerMap Ljava/util/Map;
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 7
aload 7
astore 6
aload 7
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/feildDeserializerMap Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 9
L1:
aload 7
astore 6
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 6
aload 6
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 2
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
aload 6
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 6
L0:
aload 6
ifnonnull L2
aload 0
aload 1
aload 3
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aload 8
aload 6
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFastMatchToken()I
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 6
aload 1
aload 3
aload 4
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
iconst_1
ireturn
.limit locals 10
.limit stack 5
.end method
