.bytecode 50.0
.class public synchronized com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter
.super org/springframework/http/converter/AbstractHttpMessageConverter
.signature "Lorg/springframework/http/converter/AbstractHttpMessageConverter<Ljava/lang/Object;>;"

.field public static final 'UTF8' Ljava/nio/charset/Charset;

.field private 'charset' Ljava/nio/charset/Charset;

.field private 'features' [Lcom/alibaba/fastjson/serializer/SerializerFeature;

.method static <clinit>()V
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
putstatic com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/UTF8 Ljava/nio/charset/Charset;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
iconst_2
anewarray org/springframework/http/MediaType
dup
iconst_0
new org/springframework/http/MediaType
dup
ldc "application"
ldc "json"
getstatic com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/UTF8 Ljava/nio/charset/Charset;
invokespecial org/springframework/http/MediaType/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
aastore
dup
iconst_1
new org/springframework/http/MediaType
dup
ldc "application"
ldc "*+json"
getstatic com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/UTF8 Ljava/nio/charset/Charset;
invokespecial org/springframework/http/MediaType/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
aastore
invokespecial org/springframework/http/converter/AbstractHttpMessageConverter/<init>([Lorg/springframework/http/MediaType;)V
aload 0
getstatic com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/UTF8 Ljava/nio/charset/Charset;
putfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/charset Ljava/nio/charset/Charset;
aload 0
iconst_0
anewarray com/alibaba/fastjson/serializer/SerializerFeature
putfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/features [Lcom/alibaba/fastjson/serializer/SerializerFeature;
return
.limit locals 1
.limit stack 9
.end method

.method public getCharset()Ljava/nio/charset/Charset;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/charset Ljava/nio/charset/Charset;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/features [Lcom/alibaba/fastjson/serializer/SerializerFeature;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
.signature "(Ljava/lang/Class<+Ljava/lang/Object;>;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;"
.throws java/io/IOException
.throws org/springframework/http/converter/HttpMessageNotReadableException
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 4
aload 2
invokeinterface org/springframework/http/HttpInputMessage/getBody()Ljava/io/InputStream; 0
astore 2
sipush 1024
newarray byte
astore 5
L0:
aload 2
aload 5
invokevirtual java/io/InputStream/read([B)I
istore 3
iload 3
iconst_m1
if_icmpne L1
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 2
aload 2
iconst_0
aload 2
arraylength
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/charset Ljava/nio/charset/Charset;
invokevirtual java/nio/charset/Charset/newDecoder()Ljava/nio/charset/CharsetDecoder;
aload 1
iconst_0
anewarray com/alibaba/fastjson/parser/Feature
invokestatic com/alibaba/fastjson/JSON/parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
L1:
iload 3
ifle L0
aload 4
aload 5
iconst_0
iload 3
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
goto L0
.limit locals 6
.limit stack 6
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
aload 0
aload 1
putfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/charset Ljava/nio/charset/Charset;
return
.limit locals 2
.limit stack 2
.end method

.method public transient setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
aload 0
aload 1
putfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/features [Lcom/alibaba/fastjson/serializer/SerializerFeature;
return
.limit locals 2
.limit stack 2
.end method

.method protected supports(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
.throws java/io/IOException
.throws org/springframework/http/converter/HttpMessageNotWritableException
aload 2
invokeinterface org/springframework/http/HttpOutputMessage/getBody()Ljava/io/OutputStream; 0
aload 1
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/features [Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter/charset Ljava/nio/charset/Charset;
invokevirtual java/lang/String/getBytes(Ljava/nio/charset/Charset;)[B
invokevirtual java/io/OutputStream/write([B)V
return
.limit locals 3
.limit stack 3
.end method
