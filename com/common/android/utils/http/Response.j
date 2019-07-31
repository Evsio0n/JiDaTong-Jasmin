.bytecode 50.0
.class public synchronized com/common/android/utils/http/Response
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "Response"

.field private 'mResponse' Lorg/apache/http/HttpResponse;

.field private 'mStreamConsumed' Z

.method public <init>(Lorg/apache/http/HttpResponse;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
aload 0
iconst_0
putfield com/common/android/utils/http/Response/mStreamConsumed Z
aload 0
aload 1
putfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
return
.limit locals 2
.limit stack 2
.end method

.method private setStreamConsumed(Z)V
aload 0
iload 1
putfield com/common/android/utils/http/Response/mStreamConsumed Z
return
.limit locals 2
.limit stack 2
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
.throws java/io/IOException
aload 0
getfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpeq L0
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Non OK response: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L0:
new java/io/BufferedInputStream
dup
aload 0
getfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;)V
astore 1
aload 1
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 2
aload 1
invokevirtual java/io/BufferedInputStream/close()V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public asJSONArray()Lorg/json/JSONArray;
.throws com/common/android/utils/http/ResponseException
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 1
aload 1
ifnull L4
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
ldc "null"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L4:
aconst_null
areturn
L0:
new org/json/JSONArray
dup
aload 1
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/common/android/utils/http/ResponseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/RuntimeException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
astore 1
new com/common/android/utils/http/ResponseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public asJSONObject()Lorg/json/JSONObject;
.throws com/common/android/utils/http/ResponseException
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/common/android/utils/http/ResponseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
astore 1
new com/common/android/utils/http/ResponseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/RuntimeException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public asJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/ResponseException
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
aload 0
aload 1
invokevirtual com/common/android/utils/http/Response/asString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/common/android/utils/http/ResponseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
astore 1
new com/common/android/utils/http/ResponseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/RuntimeException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/common/android/utils/http/Response/asString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public asStream()Ljava/io/InputStream;
.throws com/common/android/utils/http/ResponseException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch java/lang/IllegalStateException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
aload 0
getfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
ifnonnull L6
aconst_null
areturn
L6:
aload 0
getfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 2
aload 1
invokeinterface org/apache/http/HttpEntity/getContentEncoding()Lorg/apache/http/Header; 0
astore 3
L1:
aload 2
astore 1
aload 3
ifnull L5
aload 2
astore 1
L4:
aload 3
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
ldc "gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
new java/util/zip/GZIPInputStream
dup
aload 2
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 1
L5:
aload 0
aconst_null
putfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
aload 1
areturn
L2:
astore 1
new com/common/android/utils/http/ResponseException
dup
aload 1
invokevirtual java/lang/IllegalStateException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
astore 1
new com/common/android/utils/http/ResponseException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public asString()Ljava/lang/String;
.throws com/common/android/utils/http/ResponseException
aload 0
ldc "UTF-8"
invokevirtual com/common/android/utils/http/Response/asString(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public asString(Ljava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/ResponseException
.catch java/lang/NullPointerException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/lang/NullPointerException from L5 to L6 using L2
.catch java/io/IOException from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/lang/NullPointerException from L7 to L8 using L2
.catch java/io/IOException from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/lang/NullPointerException from L9 to L10 using L2
.catch java/io/IOException from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch java/lang/NullPointerException from L11 to L12 using L2
.catch java/io/IOException from L11 to L12 using L3
.catch all from L11 to L12 using L4
.catch all from L13 to L4 using L4
.catch java/io/IOException from L14 to L15 using L16
.catch java/lang/NullPointerException from L17 to L18 using L2
.catch java/io/IOException from L17 to L18 using L3
.catch all from L17 to L18 using L4
.catch java/lang/NullPointerException from L19 to L20 using L2
.catch java/io/IOException from L19 to L20 using L3
.catch all from L19 to L20 using L4
.catch java/io/IOException from L21 to L22 using L23
.catch all from L24 to L16 using L4
aload 0
invokevirtual com/common/android/utils/http/Response/asStream()Ljava/io/InputStream;
astore 5
aload 5
ifnonnull L25
aconst_null
areturn
L25:
aconst_null
astore 2
aconst_null
astore 4
aconst_null
astore 3
aload 1
ifnonnull L17
L0:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 5
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 1
L1:
aload 1
astore 3
aload 1
astore 2
aload 1
astore 4
L5:
ldc "line.separator"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 6
L6:
aload 1
astore 3
aload 1
astore 2
aload 1
astore 4
L7:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
L8:
aload 1
astore 3
aload 1
astore 2
aload 1
astore 4
L9:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 8
L10:
aload 8
ifnull L26
aload 1
astore 3
aload 1
astore 2
aload 1
astore 4
L11:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L12:
goto L8
L2:
astore 1
aload 3
astore 2
L13:
new com/common/android/utils/http/ResponseException
dup
aload 1
invokevirtual java/lang/NullPointerException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L4:
astore 1
aload 2
ifnull L15
L14:
aload 0
iconst_1
invokespecial com/common/android/utils/http/Response/setStreamConsumed(Z)V
aload 5
invokevirtual java/io/InputStream/close()V
aload 2
invokevirtual java/io/BufferedReader/close()V
L15:
aload 1
athrow
L17:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 5
aload 1
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/lang/String;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 1
L18:
goto L1
L26:
aload 1
astore 3
aload 1
astore 2
aload 1
astore 4
L19:
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 6
L20:
aload 1
ifnull L22
L21:
aload 0
iconst_1
invokespecial com/common/android/utils/http/Response/setStreamConsumed(Z)V
aload 5
invokevirtual java/io/InputStream/close()V
aload 1
invokevirtual java/io/BufferedReader/close()V
L22:
aload 6
areturn
L23:
astore 1
new com/common/android/utils/http/ResponseException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L3:
astore 1
aload 4
astore 2
L24:
new com/common/android/utils/http/ResponseException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
L16:
astore 1
new com/common/android/utils/http/ResponseException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/common/android/utils/http/ResponseException/<init>(Ljava/lang/String;Ljava/lang/Exception;)V
athrow
.limit locals 9
.limit stack 6
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
aload 0
getfield com/common/android/utils/http/Response/mResponse Lorg/apache/http/HttpResponse;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isStreamConsumed()Z
aload 0
getfield com/common/android/utils/http/Response/mStreamConsumed Z
ireturn
.limit locals 1
.limit stack 1
.end method
