.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/util/NetUtil
.super java/lang/Object

.field public static final 'ACCEPT' Ljava/lang/String; = "image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

.field public static final 'ACCEPT_ENCODING' Ljava/lang/String; = "gzip, deflate"

.field public static final 'ACCEPT_LANGUAGE' Ljava/lang/String; = "zh-cn,zh;q=0.5"

.field public static final 'CONNECTION' Ljava/lang/String; = "Keep_Alive"

.field public static final 'USER_AGENT' Ljava/lang/String; = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static GetInputStream(Ljava/lang/String;)Ljava/io/InputStream;
.throws java/lang/Exception
aload 0
invokestatic com/ccb/ccbnetpay/util/NetUtil/getConnection(Ljava/lang/String;)Ljava/net/URLConnection;
astore 0
aload 0
invokevirtual java/net/URLConnection/connect()V
aload 0
invokevirtual java/net/URLConnection/getInputStream()Ljava/io/InputStream;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/net/URLConnection;
.throws java/lang/Exception
new java/net/URL
dup
aload 0
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/net/URL/getProtocol()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
ldc "http"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
astore 0
L1:
aload 0
ldc "user-agent"
ldc "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)"
invokevirtual java/net/URLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "accept"
ldc "image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"
invokevirtual java/net/URLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "Proxy-Connection"
ldc "Keep_Alive"
invokevirtual java/net/URLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "Accept-Language"
ldc "zh-cn,zh;q=0.5"
invokevirtual java/net/URLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "Accept-Encoding"
ldc "gzip, deflate"
invokevirtual java/net/URLConnection/setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
sipush 15000
invokevirtual java/net/URLConnection/setConnectTimeout(I)V
aload 0
sipush 15000
invokevirtual java/net/URLConnection/setReadTimeout(I)V
aload 0
iconst_1
invokevirtual java/net/URLConnection/setDoInput(Z)V
aload 0
iconst_1
invokevirtual java/net/URLConnection/setDoOutput(Z)V
aload 0
iconst_0
invokevirtual java/net/URLConnection/setUseCaches(Z)V
aload 0
areturn
L0:
aload 0
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast javax/net/ssl/HttpsURLConnection
astore 0
goto L1
.limit locals 1
.limit stack 3
.end method

.method public static getKeyWords(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iconst_m1
iload 2
if_icmpne L0
ldc ""
areturn
L0:
aload 0
ldc "&"
iload 2
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 3
iconst_m1
iload 3
if_icmpne L1
aload 0
aload 1
invokevirtual java/lang/String/length()I
iload 2
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
L2:
aload 0
ifnull L3
ldc "null"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
astore 1
ldc "NULL"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
L3:
ldc ""
astore 1
L4:
aload 1
areturn
L1:
aload 0
aload 1
invokevirtual java/lang/String/length()I
iload 2
iadd
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
goto L2
.limit locals 4
.limit stack 3
.end method

.method public static readStream(Ljava/io/InputStream;)[B
.throws java/lang/Exception
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
sipush 1024
newarray byte
astore 3
L0:
aload 0
aload 3
invokevirtual java/io/InputStream/read([B)I
istore 1
iload 1
iconst_m1
if_icmpne L1
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L1:
aload 2
aload 3
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
goto L0
.limit locals 4
.limit stack 4
.end method

.method public static sendGet(Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L11 to L12 using L13
.catch all from L11 to L12 using L14
.catch java/lang/Exception from L15 to L16 using L17
.catch java/lang/Exception from L18 to L19 using L17
.catch java/lang/Exception from L20 to L21 using L13
.catch all from L20 to L21 using L14
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L26
.catch java/lang/Exception from L27 to L28 using L26
.catch java/lang/Exception from L29 to L30 using L31
.catch java/lang/Exception from L32 to L33 using L31
ldc ""
astore 5
aconst_null
astore 7
aconst_null
astore 3
aconst_null
astore 4
aconst_null
astore 8
aconst_null
astore 6
aload 7
astore 1
aload 8
astore 2
L0:
aload 0
invokestatic com/ccb/ccbnetpay/util/NetUtil/getConnection(Ljava/lang/String;)Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 0
L1:
aload 7
astore 1
aload 8
astore 2
L4:
aload 0
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
L5:
aload 7
astore 1
aload 8
astore 2
L6:
new java/io/InputStreamReader
dup
aload 0
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
astore 0
L7:
new java/io/BufferedReader
dup
aload 0
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 2
L8:
aload 5
astore 1
L11:
aload 2
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 3
L12:
aload 3
ifnonnull L20
aload 2
ifnull L16
L15:
aload 2
invokevirtual java/io/BufferedReader/close()V
L16:
aload 0
ifnull L34
L18:
aload 0
invokevirtual java/io/InputStreamReader/close()V
L19:
aload 1
areturn
L20:
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L21:
aload 3
astore 1
goto L11
L2:
astore 3
aload 6
astore 0
L35:
aload 4
astore 1
aload 0
astore 2
L22:
ldc "--http\u8bbf\u95ee\u5f02\u5e38--"
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L23:
aload 4
ifnull L25
L24:
aload 4
invokevirtual java/io/BufferedReader/close()V
L25:
aload 5
astore 1
aload 0
ifnull L19
L27:
aload 0
invokevirtual java/io/InputStreamReader/close()V
L28:
aload 5
areturn
L26:
astore 0
ldc "---\u6d41\u5173\u95ed\u5f02\u5e38---"
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
areturn
L3:
astore 0
L36:
aload 1
ifnull L30
L29:
aload 1
invokevirtual java/io/BufferedReader/close()V
L30:
aload 2
ifnull L33
L32:
aload 2
invokevirtual java/io/InputStreamReader/close()V
L33:
aload 0
athrow
L31:
astore 1
ldc "---\u6d41\u5173\u95ed\u5f02\u5e38---"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L33
L17:
astore 0
ldc "---\u6d41\u5173\u95ed\u5f02\u5e38---"
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L34:
aload 1
areturn
L10:
astore 4
aload 3
astore 1
aload 0
astore 2
aload 4
astore 0
goto L36
L14:
astore 3
aload 2
astore 1
aload 0
astore 2
aload 3
astore 0
goto L36
L9:
astore 3
goto L35
L13:
astore 3
aload 2
astore 4
aload 1
astore 5
goto L35
.limit locals 9
.limit stack 3
.end method

.method public static sendPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch java/lang/Exception from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch java/lang/Exception from L8 to L9 using L6
.catch all from L8 to L9 using L7
.catch java/lang/Exception from L10 to L11 using L6
.catch all from L10 to L11 using L7
.catch java/lang/Exception from L12 to L13 using L14
.catch all from L12 to L13 using L15
.catch java/lang/Exception from L16 to L17 using L18
.catch java/lang/Exception from L19 to L20 using L18
.catch java/lang/Exception from L21 to L22 using L2
.catch all from L21 to L22 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/lang/Exception from L26 to L27 using L28
.catch java/lang/Exception from L29 to L30 using L28
.catch java/lang/Exception from L31 to L32 using L6
.catch all from L31 to L32 using L7
.catch java/lang/Exception from L33 to L34 using L14
.catch all from L33 to L34 using L15
.catch java/lang/Exception from L35 to L36 using L37
.catch java/lang/Exception from L38 to L39 using L37
aconst_null
astore 7
aconst_null
astore 4
aconst_null
astore 6
aconst_null
astore 5
ldc ""
astore 3
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 9
aload 0
invokestatic com/ccb/ccbnetpay/util/NetUtil/getConnection(Ljava/lang/String;)Ljava/net/URLConnection;
astore 10
aload 10
invokevirtual java/net/URLConnection/connect()V
aload 1
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 11
L1:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L21
new java/io/PrintWriter
dup
aload 10
invokevirtual java/net/URLConnection/getOutputStream()Ljava/io/OutputStream;
invokespecial java/io/PrintWriter/<init>(Ljava/io/OutputStream;)V
astore 0
L4:
aload 0
aload 9
invokevirtual java/io/PrintWriter/print(Ljava/lang/Object;)V
aload 0
invokevirtual java/io/PrintWriter/flush()V
L5:
iconst_1
istore 2
L8:
aload 10
iload 2
invokevirtual java/net/URLConnection/getHeaderFieldKey(I)Ljava/lang/String;
astore 1
L9:
aload 1
ifnonnull L31
L10:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 10
invokevirtual java/net/URLConnection/getInputStream()Ljava/io/InputStream;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 4
L11:
aload 3
astore 1
L12:
aload 4
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 3
L13:
aload 3
ifnonnull L33
aload 4
ifnull L17
L16:
aload 4
invokevirtual java/io/BufferedReader/close()V
L17:
aload 0
ifnull L40
L19:
aload 0
invokevirtual java/io/PrintWriter/close()V
L20:
aload 1
astore 3
L41:
aload 3
areturn
L21:
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 12
aload 9
invokevirtual java/lang/StringBuilder/length()I
ifeq L22
aload 9
bipush 38
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L22:
aload 1
aload 12
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
astore 8
L23:
aload 8
astore 0
aload 8
ifnonnull L24
ldc ""
astore 0
L24:
aload 9
aload 12
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "GB2312"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 61
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "GB2312"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L25:
goto L1
L2:
astore 0
aload 3
astore 1
aload 4
astore 0
aload 5
astore 4
L42:
aload 4
ifnull L27
L26:
aload 4
invokevirtual java/io/BufferedReader/close()V
L27:
aload 1
astore 3
aload 0
ifnull L41
L29:
aload 0
invokevirtual java/io/PrintWriter/close()V
L30:
aload 1
areturn
L28:
astore 0
aload 1
areturn
L31:
ldc "set-cookie"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L32
aload 10
iload 2
invokevirtual java/net/URLConnection/getHeaderField(I)Ljava/lang/String;
ldc "CCBIBS1"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
pop
L32:
iload 2
iconst_1
iadd
istore 2
goto L8
L33:
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L34:
aload 3
astore 1
goto L12
L3:
astore 1
aload 7
astore 0
aload 6
astore 3
L43:
aload 3
ifnull L36
L35:
aload 3
invokevirtual java/io/BufferedReader/close()V
L36:
aload 0
ifnull L39
L38:
aload 0
invokevirtual java/io/PrintWriter/close()V
L39:
aload 1
athrow
L18:
astore 0
aload 1
areturn
L37:
astore 0
goto L39
L7:
astore 1
aload 6
astore 3
goto L43
L15:
astore 1
aload 4
astore 3
goto L43
L6:
astore 1
aload 5
astore 4
aload 3
astore 1
goto L42
L14:
astore 3
goto L42
L40:
aload 1
areturn
.limit locals 13
.limit stack 5
.end method
