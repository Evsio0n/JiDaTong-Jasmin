.bytecode 50.0
.class public synchronized com/alibaba/fastjson/support/spring/FastJsonJsonView
.super org/springframework/web/servlet/view/AbstractView

.field public static final 'DEFAULT_CONTENT_TYPE' Ljava/lang/String; = "application/json"

.field public static final 'UTF8' Ljava/nio/charset/Charset;

.field private 'charset' Ljava/nio/charset/Charset;

.field private 'disableCaching' Z

.field private 'renderedAttributes' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/String;>;"

.field private 'serializerFeatures' [Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field private 'updateContentLength' Z

.method static <clinit>()V
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
putstatic com/alibaba/fastjson/support/spring/FastJsonJsonView/UTF8 Ljava/nio/charset/Charset;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial org/springframework/web/servlet/view/AbstractView/<init>()V
aload 0
getstatic com/alibaba/fastjson/support/spring/FastJsonJsonView/UTF8 Ljava/nio/charset/Charset;
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/charset Ljava/nio/charset/Charset;
aload 0
iconst_0
anewarray com/alibaba/fastjson/serializer/SerializerFeature
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/serializerFeatures [Lcom/alibaba/fastjson/serializer/SerializerFeature;
aload 0
iconst_1
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/disableCaching Z
aload 0
iconst_0
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/updateContentLength Z
aload 0
ldc "application/json"
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/setContentType(Ljava/lang/String;)V
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/setExposePathVariables(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected filterModel(Ljava/util/Map;)Ljava/lang/Object;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Ljava/lang/Object;"
new java/util/HashMap
dup
aload 1
invokeinterface java/util/Map/size()I 0
invokespecial java/util/HashMap/<init>(I)V
astore 3
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/renderedAttributes Ljava/util/Set;
invokestatic org/springframework/util/CollectionUtils/isEmpty(Ljava/util/Collection;)Z
ifne L0
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/renderedAttributes Ljava/util/Set;
astore 2
L1:
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
instanceof org/springframework/validation/BindingResult
ifne L2
aload 2
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L2
aload 3
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L2
L0:
aload 1
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
astore 2
goto L1
L3:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getCharset()Ljava/nio/charset/Charset;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/charset Ljava/nio/charset/Charset;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/serializerFeatures [Lcom/alibaba/fastjson/serializer/SerializerFeature;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected prepareResponse(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
aload 2
getstatic com/alibaba/fastjson/support/spring/FastJsonJsonView/UTF8 Ljava/nio/charset/Charset;
invokevirtual java/nio/charset/Charset/name()Ljava/lang/String;
invokeinterface javax/servlet/http/HttpServletResponse/setCharacterEncoding(Ljava/lang/String;)V 1
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/disableCaching Z
ifeq L0
aload 2
ldc "Pragma"
ldc "no-cache"
invokeinterface javax/servlet/http/HttpServletResponse/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 2
ldc "Cache-Control"
ldc "no-cache, no-store, max-age=0"
invokeinterface javax/servlet/http/HttpServletResponse/addHeader(Ljava/lang/String;Ljava/lang/String;)V 2
aload 2
ldc "Expires"
lconst_1
invokeinterface javax/servlet/http/HttpServletResponse/addDateHeader(Ljava/lang/String;J)V 3
L0:
return
.limit locals 3
.limit stack 4
.end method

.method protected renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V"
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/filterModel(Ljava/util/Map;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/serializerFeatures [Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/charset Ljava/nio/charset/Charset;
invokevirtual java/lang/String/getBytes(Ljava/nio/charset/Charset;)[B
astore 2
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/updateContentLength Z
ifeq L0
aload 0
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/createTemporaryOutputStream()Ljava/io/ByteArrayOutputStream;
astore 1
L1:
aload 1
aload 2
invokevirtual java/io/OutputStream/write([B)V
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonJsonView/updateContentLength Z
ifeq L2
aload 0
aload 3
aload 1
checkcast java/io/ByteArrayOutputStream
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/writeToResponse(Ljavax/servlet/http/HttpServletResponse;Ljava/io/ByteArrayOutputStream;)V
L2:
return
L0:
aload 3
invokeinterface javax/servlet/http/HttpServletResponse/getOutputStream()Ljavax/servlet/ServletOutputStream; 0
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
aload 0
aload 1
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/charset Ljava/nio/charset/Charset;
return
.limit locals 2
.limit stack 2
.end method

.method public setDisableCaching(Z)V
aload 0
iload 1
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/disableCaching Z
return
.limit locals 2
.limit stack 2
.end method

.method public transient setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
aload 0
aload 1
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/serializerFeatures [Lcom/alibaba/fastjson/serializer/SerializerFeature;
return
.limit locals 2
.limit stack 2
.end method

.method public setRenderedAttributes(Ljava/util/Set;)V
.signature "(Ljava/util/Set<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/renderedAttributes Ljava/util/Set;
return
.limit locals 2
.limit stack 2
.end method

.method public transient setSerializerFeature([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokevirtual com/alibaba/fastjson/support/spring/FastJsonJsonView/setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdateContentLength(Z)V
aload 0
iload 1
putfield com/alibaba/fastjson/support/spring/FastJsonJsonView/updateContentLength Z
return
.limit locals 2
.limit stack 2
.end method
