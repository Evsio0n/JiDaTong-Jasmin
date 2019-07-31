.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/DateSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/DateSerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/DateSerializer
dup
invokespecial com/alibaba/fastjson/serializer/DateSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/DateSerializer/instance Lcom/alibaba/fastjson/serializer/DateSerializer;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 3
aload 2
ifnonnull L0
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 3
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 4
if_acmpeq L1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc java/util/Date
if_acmpne L2
aload 3
ldc "new Date("
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 3
aload 2
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
bipush 41
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLongAndChar(JC)V
return
L2:
aload 3
bipush 123
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 3
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 1
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
aload 3
bipush 44
ldc "val"
aload 2
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;J)V
aload 3
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 2
checkcast java/util/Date
astore 4
aload 3
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteDateUseDateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L3
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getDateFormat()Ljava/text/DateFormat;
astore 2
aload 2
astore 1
aload 2
ifnonnull L4
new java/text/SimpleDateFormat
dup
getstatic com/alibaba/fastjson/JSON/DEFFAULT_DATE_FORMAT Ljava/lang/String;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 1
L4:
aload 3
aload 1
aload 4
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L3:
aload 4
invokevirtual java/util/Date/getTime()J
lstore 12
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseISO8601DateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L5
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L6
aload 3
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
L7:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 2
aload 2
lload 12
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 2
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 5
aload 2
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
istore 6
aload 2
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 7
aload 2
bipush 11
invokevirtual java/util/Calendar/get(I)I
istore 8
aload 2
bipush 12
invokevirtual java/util/Calendar/get(I)I
istore 9
aload 2
bipush 13
invokevirtual java/util/Calendar/get(I)I
istore 10
aload 2
bipush 14
invokevirtual java/util/Calendar/get(I)I
istore 11
iload 11
ifeq L8
ldc "0000-00-00T00:00:00.000"
invokevirtual java/lang/String/toCharArray()[C
astore 2
iload 11
bipush 23
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 10
bipush 19
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 9
bipush 16
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 8
bipush 13
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 7
bipush 10
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 6
bipush 7
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 5
iconst_4
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
L9:
aload 3
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write([C)V
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L10
aload 3
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L6:
aload 3
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
goto L7
L8:
iload 10
ifne L11
iload 9
ifne L11
iload 8
ifne L11
ldc "0000-00-00"
invokevirtual java/lang/String/toCharArray()[C
astore 2
iload 7
bipush 10
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 6
bipush 7
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 5
iconst_4
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
goto L9
L11:
ldc "0000-00-00T00:00:00"
invokevirtual java/lang/String/toCharArray()[C
astore 2
iload 10
bipush 19
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 9
bipush 16
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 8
bipush 13
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 7
bipush 10
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 6
bipush 7
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
iload 5
iconst_4
aload 2
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
goto L9
L10:
aload 3
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L5:
aload 3
lload 12
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
return
.limit locals 14
.limit stack 5
.end method
