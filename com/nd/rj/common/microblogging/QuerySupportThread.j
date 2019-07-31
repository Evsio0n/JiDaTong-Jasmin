.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/QuerySupportThread
.super java/lang/Thread

.field private 'mCtx' Landroid/content/Context;

.field private 'mIsRun' Z

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/QuerySupportThread/mIsRun Z
aload 0
aload 1
putfield com/nd/rj/common/microblogging/QuerySupportThread/mCtx Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public DownSaveToFile(Ljava/lang/String;Ljava/io/File;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L2 using L2
.catch all from L8 to L2 using L3
.catch all from L9 to L10 using L3
.catch all from L11 to L12 using L3
.catch java/io/IOException from L13 to L14 using L15
.catch java/io/IOException from L16 to L17 using L15
.catch java/lang/Exception from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Exception from L21 to L22 using L23
.catch all from L21 to L22 using L24
.catch java/lang/Exception from L22 to L25 using L23
.catch all from L22 to L25 using L24
.catch java/lang/Exception from L26 to L27 using L23
.catch all from L26 to L27 using L24
.catch java/io/IOException from L28 to L29 using L30
.catch java/io/IOException from L31 to L32 using L30
.catch java/io/IOException from L33 to L34 using L35
.catch java/io/IOException from L36 to L37 using L35
aconst_null
astore 10
aconst_null
astore 9
aconst_null
astore 7
aconst_null
astore 8
aload 9
astore 6
aload 10
astore 4
aload 7
astore 5
L0:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
astore 1
L1:
aload 9
astore 6
aload 10
astore 4
aload 7
astore 5
L4:
aload 1
invokevirtual java/net/URLConnection/connect()V
L5:
aload 9
astore 6
aload 10
astore 4
aload 7
astore 5
L6:
aload 1
invokevirtual java/net/URLConnection/getInputStream()Ljava/io/InputStream;
astore 1
L7:
aload 1
ifnonnull L38
aload 1
astore 6
aload 1
astore 4
aload 7
astore 5
L8:
new java/lang/RuntimeException
dup
ldc "stream is null"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 4
aload 8
astore 7
aload 6
astore 1
aload 4
astore 6
L39:
aload 1
astore 4
aload 7
astore 5
L9:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
L10:
aload 1
astore 4
aload 7
astore 5
L11:
aload 2
invokestatic com/nd/rj/common/microblogging/help/FileFun/DeleteFile(Ljava/io/File;)V
L12:
aload 1
ifnull L14
L13:
aload 1
invokevirtual java/io/InputStream/close()V
L14:
aload 7
ifnull L17
L16:
aload 7
invokevirtual java/io/OutputStream/close()V
L17:
iconst_0
ireturn
L38:
aload 1
astore 6
aload 1
astore 4
aload 7
astore 5
L18:
aload 2
invokestatic com/nd/rj/common/microblogging/help/FileFun/DeleteFile(Ljava/io/File;)V
L19:
aload 1
astore 6
aload 1
astore 4
aload 7
astore 5
L20:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 7
L21:
sipush 1024
newarray byte
astore 4
L22:
aload 1
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 3
L25:
iload 3
iconst_m1
if_icmpeq L40
L26:
aload 7
aload 4
iconst_0
iload 3
invokevirtual java/io/OutputStream/write([BII)V
L27:
goto L22
L23:
astore 6
goto L39
L40:
aload 1
ifnull L29
L28:
aload 1
invokevirtual java/io/InputStream/close()V
L29:
aload 7
ifnull L32
L31:
aload 7
invokevirtual java/io/OutputStream/close()V
L32:
iconst_1
ireturn
L30:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iconst_1
ireturn
L15:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
L41:
aload 4
ifnull L34
L33:
aload 4
invokevirtual java/io/InputStream/close()V
L34:
aload 5
ifnull L37
L36:
aload 5
invokevirtual java/io/OutputStream/close()V
L37:
aload 1
athrow
L35:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
goto L37
L24:
astore 2
aload 7
astore 5
aload 1
astore 4
aload 2
astore 1
goto L41
.limit locals 11
.limit stack 4
.end method

.method public IsRun()Z
aload 0
getfield com/nd/rj/common/microblogging/QuerySupportThread/mIsRun Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
.catch all from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch org/json/JSONException from L6 to L7 using L5
.catch all from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L5
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
aload 0
iconst_1
putfield com/nd/rj/common/microblogging/QuerySupportThread/mIsRun Z
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 0
getfield com/nd/rj/common/microblogging/QuerySupportThread/mCtx Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/ServerInterface/GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ServerInterface;
aload 3
invokevirtual com/nd/rj/common/microblogging/ServerInterface/querySNSType(Ljava/lang/StringBuffer;)I
istore 1
L1:
iload 1
ifne L9
L3:
new org/json/JSONArray
dup
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial org/json/JSONArray/<init>(Ljava/lang/String;)V
astore 3
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 0
getfield com/nd/rj/common/microblogging/QuerySupportThread/mCtx Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/ConfigFile/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
aload 4
invokevirtual com/nd/rj/common/microblogging/ConfigFile/getSNSDataPath(Ljava/lang/StringBuffer;)V
aload 4
getstatic java/io/File/separatorChar C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 3
invokevirtual org/json/JSONArray/length()I
istore 2
L4:
iconst_0
istore 1
L12:
iload 1
iload 2
if_icmpge L8
L6:
aload 3
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
aload 6
ldc "snstype"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 6
ldc "logourl"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
aload 5
invokevirtual java/lang/String/length()I
iconst_3
isub
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 8
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 9
aload 4
invokevirtual java/lang/StringBuffer/append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
pop
aload 9
aload 7
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "."
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 8
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 6
ldc "logofile"
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/io/File
dup
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/exists()Z
ifne L13
aload 0
aload 5
aload 6
invokevirtual com/nd/rj/common/microblogging/QuerySupportThread/DownSaveToFile(Ljava/lang/String;Ljava/io/File;)Z
pop
L7:
goto L13
L8:
aload 0
getfield com/nd/rj/common/microblogging/QuerySupportThread/mCtx Landroid/content/Context;
invokestatic com/nd/rj/common/microblogging/ConfigFile/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ConfigFile;
aload 3
invokevirtual com/nd/rj/common/microblogging/ConfigFile/SetSNSSupport(Lorg/json/JSONArray;)V
L9:
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/QuerySupportThread/mIsRun Z
return
L5:
astore 3
L10:
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
L11:
goto L9
L2:
astore 3
aload 0
iconst_0
putfield com/nd/rj/common/microblogging/QuerySupportThread/mIsRun Z
aload 3
athrow
L13:
iload 1
iconst_1
iadd
istore 1
goto L12
.limit locals 10
.limit stack 3
.end method
