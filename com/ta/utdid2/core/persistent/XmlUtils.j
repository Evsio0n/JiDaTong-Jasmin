.bytecode 50.0
.class synchronized com/ta/utdid2/core/persistent/XmlUtils
.super java/lang/Object

.method public static final readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
invokestatic android/util/Xml/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 1
aload 1
aload 0
aconst_null
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
aload 1
iconst_1
anewarray java/lang/String
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
checkcast java/util/HashMap
areturn
.limit locals 2
.limit stack 3
.end method

.method public static final readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
.catch java/lang/NullPointerException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L0 to L1 using L3
.catch java/lang/NullPointerException from L4 to L5 using L6
.catch java/lang/NumberFormatException from L4 to L5 using L7
L0:
aload 0
aconst_null
ldc "num"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L1:
iload 3
newarray int
astore 2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 3
iconst_0
istore 4
L8:
iload 3
iconst_2
if_icmpne L9
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
L4:
aload 2
iload 4
aload 0
aconst_null
ldc "value"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iastore
L5:
iload 4
istore 5
L11:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 6
iload 5
istore 4
iload 6
istore 3
iload 6
iconst_1
if_icmpne L8
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Document ended before "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " end tag"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
new org/xmlpull/v1/XmlPullParserException
dup
ldc "Need num attribute in byte-array"
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L3:
astore 0
new org/xmlpull/v1/XmlPullParserException
dup
ldc "Not a number in num attribute in byte-array"
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L6:
astore 0
new org/xmlpull/v1/XmlPullParserException
dup
ldc "Need value attribute in item"
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L7:
astore 0
new org/xmlpull/v1/XmlPullParserException
dup
ldc "Not a number in value attribute in item"
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L10:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Expected item tag at: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L9:
iload 4
istore 5
iload 3
iconst_3
if_icmpne L11
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L12
aload 2
areturn
L12:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "item"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
iload 4
iconst_1
iadd
istore 5
goto L11
L13:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Expected "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " end tag at: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method public static final readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 3
L0:
iload 3
iconst_2
if_icmpne L1
aload 5
aload 0
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 4
iload 4
istore 3
iload 4
iconst_1
if_icmpne L0
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Document ended before "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " end tag"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L1:
iload 3
iconst_3
if_icmpne L2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 5
areturn
L3:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Expected "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " end tag at: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public static final readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 5
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 3
L0:
iload 3
iconst_2
if_icmpne L1
aload 0
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
astore 6
aload 2
iconst_0
aaload
ifnull L2
aload 5
aload 2
iconst_0
aaload
aload 6
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 4
iload 4
istore 3
iload 4
iconst_1
if_icmpne L0
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Document ended before "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " end tag"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L2:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Map value without name attribute: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L1:
iload 3
iconst_3
if_icmpne L3
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 5
areturn
L4:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Expected "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " end tag at: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 5
.end method

.method private static final readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aconst_null
astore 3
aload 0
aconst_null
ldc "name"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 4
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 5
aload 5
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L1:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
iload 2
iconst_1
if_icmpeq L2
iload 2
iconst_3
if_icmpne L3
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 1
iconst_0
aload 4
aastore
aload 3
areturn
L0:
aload 5
ldc "string"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
ldc ""
astore 3
L6:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
iload 2
iconst_1
if_icmpeq L7
iload 2
iconst_3
if_icmpne L8
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
ldc "string"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
aload 1
iconst_0
aload 4
aastore
aload 3
areturn
L9:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected end tag in <string>: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L8:
iload 2
iconst_4
if_icmpne L10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L6
L10:
iload 2
iconst_2
if_icmpne L6
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected start tag in <string>: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L7:
new org/xmlpull/v1/XmlPullParserException
dup
ldc "Unexpected end of document in <string>"
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 5
ldc "int"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
aload 0
aconst_null
ldc "value"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 3
goto L1
L11:
aload 5
ldc "long"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L12
aload 0
aconst_null
ldc "value"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
astore 3
goto L1
L12:
aload 5
ldc "float"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L13
new java/lang/Float
dup
aload 0
aconst_null
ldc "value"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokespecial java/lang/Float/<init>(Ljava/lang/String;)V
astore 3
goto L1
L13:
aload 5
ldc "double"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L14
new java/lang/Double
dup
aload 0
aconst_null
ldc "value"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokespecial java/lang/Double/<init>(Ljava/lang/String;)V
astore 3
goto L1
L14:
aload 5
ldc "boolean"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
aload 0
aconst_null
ldc "value"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic java/lang/Boolean/valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
astore 3
goto L1
L15:
aload 5
ldc "int-array"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L16
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
ldc "int-array"
aload 1
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
astore 0
aload 1
iconst_0
aload 4
aastore
aload 0
areturn
L16:
aload 5
ldc "map"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L17
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
ldc "map"
aload 1
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
astore 0
aload 1
iconst_0
aload 4
aastore
aload 0
areturn
L17:
aload 5
ldc "list"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L18
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
ldc "list"
aload 1
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
astore 0
aload 1
iconst_0
aload 4
aastore
aload 0
areturn
L18:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unknown tag: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L4:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected end tag in <"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 2
iconst_4
if_icmpne L19
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected text in <"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L19:
iload 2
iconst_2
if_icmpne L1
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected start tag in <"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L2:
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected end of document in <"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public static final readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 2
L3:
iload 2
iconst_2
if_icmpne L4
aload 0
aload 1
invokestatic com/ta/utdid2/core/persistent/XmlUtils/readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
areturn
L4:
iload 2
iconst_3
if_icmpne L5
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected end tag at: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L5:
iload 2
iconst_4
if_icmpne L0
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected text: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 3
L1:
iload 3
istore 2
iload 3
iconst_1
if_icmpne L3
new org/xmlpull/v1/XmlPullParserException
dup
ldc "Unexpected end of document"
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
new org/xmlpull/v1/XmlPullParserException
dup
new java/lang/StringBuilder
dup
ldc "Unexpected call next(): "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/xmlpull/v1/XmlPullParserException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 5
.end method

.method public static final writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
ifnonnull L0
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L0:
aload 2
aconst_null
ldc "byte-array"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L1
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L1:
aload 0
arraylength
istore 5
aload 2
aconst_null
ldc "num"
iload 5
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
new java/lang/StringBuilder
dup
aload 0
arraylength
iconst_2
imul
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
iconst_0
istore 3
L2:
iload 3
iload 5
if_icmpge L3
aload 0
iload 3
baload
istore 6
iload 6
iconst_4
ishr
istore 4
iload 4
bipush 10
if_icmplt L4
iload 4
bipush 97
iadd
bipush 10
isub
istore 4
L5:
aload 1
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
iload 6
sipush 255
iand
istore 4
iload 4
bipush 10
if_icmplt L6
iload 4
bipush 97
iadd
bipush 10
isub
istore 4
L7:
aload 1
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L4:
iload 4
bipush 48
iadd
istore 4
goto L5
L6:
iload 4
bipush 48
iadd
istore 4
goto L7
L3:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 1
pop
aload 2
aconst_null
ldc "byte-array"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 7
.limit stack 4
.end method

.method public static final writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
ifnonnull L0
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L0:
aload 2
aconst_null
ldc "int-array"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L1
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L1:
aload 0
arraylength
istore 4
aload 2
aconst_null
ldc "num"
iload 4
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 2
aconst_null
ldc "item"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
aconst_null
ldc "value"
aload 0
iload 3
iaload
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
aload 2
aconst_null
ldc "item"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 2
aconst_null
ldc "int-array"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 5
.limit stack 5
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
ifnonnull L0
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L0:
aload 2
aconst_null
ldc "list"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L1
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L1:
aload 0
invokeinterface java/util/List/size()I 0
istore 4
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 0
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
aconst_null
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 2
aconst_null
ldc "list"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 5
.limit stack 4
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
new com/ta/utdid2/core/persistent/FastXmlSerializer
dup
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/<init>()V
astore 2
aload 2
aload 1
ldc "utf-8"
invokeinterface org/xmlpull/v1/XmlSerializer/setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V 2
aload 2
aconst_null
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface org/xmlpull/v1/XmlSerializer/startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V 2
aload 2
ldc "http://xmlpull.org/v1/doc/features.html#indent-output"
iconst_1
invokeinterface org/xmlpull/v1/XmlSerializer/setFeature(Ljava/lang/String;Z)V 2
aload 0
aconst_null
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
aload 2
invokeinterface org/xmlpull/v1/XmlSerializer/endDocument()V 0
return
.limit locals 3
.limit stack 3
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
ifnonnull L0
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L0:
aload 0
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 0
aload 2
aconst_null
ldc "map"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L1
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 1
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
goto L1
L2:
aload 2
aconst_null
ldc "map"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
.limit locals 3
.limit stack 4
.end method

.method public static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 0
ifnonnull L0
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L1
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L1:
aload 2
aconst_null
ldc "null"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L0:
aload 0
instanceof java/lang/String
ifeq L2
aload 2
aconst_null
ldc "string"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L3
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L3:
aload 2
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 1
pop
aload 2
aconst_null
ldc "string"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L2:
aload 0
instanceof java/lang/Integer
ifeq L4
ldc "int"
astore 3
L5:
aload 2
aconst_null
aload 3
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L6
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L6:
aload 2
aconst_null
ldc "value"
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
aload 2
aconst_null
aload 3
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L4:
aload 0
instanceof java/lang/Long
ifeq L7
ldc "long"
astore 3
goto L5
L7:
aload 0
instanceof java/lang/Float
ifeq L8
ldc "float"
astore 3
goto L5
L8:
aload 0
instanceof java/lang/Double
ifeq L9
ldc "double"
astore 3
goto L5
L9:
aload 0
instanceof java/lang/Boolean
ifeq L10
ldc "boolean"
astore 3
goto L5
L10:
aload 0
instanceof [B
ifeq L11
aload 0
checkcast [B
aload 1
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
return
L11:
aload 0
instanceof [I
ifeq L12
aload 0
checkcast [I
aload 1
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
return
L12:
aload 0
instanceof java/util/Map
ifeq L13
aload 0
checkcast java/util/Map
aload 1
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
return
L13:
aload 0
instanceof java/util/List
ifeq L14
aload 0
checkcast java/util/List
aload 1
aload 2
invokestatic com/ta/utdid2/core/persistent/XmlUtils/writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
return
L14:
aload 0
instanceof java/lang/CharSequence
ifeq L15
aload 2
aconst_null
ldc "string"
invokeinterface org/xmlpull/v1/XmlSerializer/startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
aload 1
ifnull L16
aload 2
aconst_null
ldc "name"
aload 1
invokeinterface org/xmlpull/v1/XmlSerializer/attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 3
pop
L16:
aload 2
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface org/xmlpull/v1/XmlSerializer/text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 1
pop
aload 2
aconst_null
ldc "string"
invokeinterface org/xmlpull/v1/XmlSerializer/endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer; 2
pop
return
L15:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
ldc "writeValueXml: unable to write value "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 5
.end method
