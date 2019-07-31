.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/ServerInterface
.super java/lang/Object
.inner class private static final URL inner com/nd/rj/common/microblogging/ServerInterface$URL outer com/nd/rj/common/microblogging/ServerInterface

.field private static final 'Host' Ljava/lang/String; = "https://share.oap.99.com/share/"

.field private static final 'ServerHost' Ljava/lang/String; = "https://share.oap.99.com/share/index.php/"

.field private static 'server' Lcom/nd/rj/common/microblogging/ServerInterface;

.field private 'httpTool' Lcom/nd/rj/common/microblogging/help/HttpTool;

.field private 'sessionid' Ljava/lang/String;

.method static <clinit>()V
aconst_null
putstatic com/nd/rj/common/microblogging/ServerInterface/server Lcom/nd/rj/common/microblogging/ServerInterface;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
aload 0
new com/nd/rj/common/microblogging/help/HttpTool
dup
aload 1
invokespecial com/nd/rj/common/microblogging/help/HttpTool/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
return
.limit locals 2
.limit stack 4
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/nd/rj/common/microblogging/ServerInterface;
getstatic com/nd/rj/common/microblogging/ServerInterface/server Lcom/nd/rj/common/microblogging/ServerInterface;
ifnonnull L0
new com/nd/rj/common/microblogging/ServerInterface
dup
aload 0
invokespecial com/nd/rj/common/microblogging/ServerInterface/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/microblogging/ServerInterface/server Lcom/nd/rj/common/microblogging/ServerInterface;
L0:
getstatic com/nd/rj/common/microblogging/ServerInterface/server Lcom/nd/rj/common/microblogging/ServerInterface;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getMD5Str(Ljava/lang/String;)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/security/NoSuchAlgorithmException from L4 to L5 using L2
.catch java/io/UnsupportedEncodingException from L4 to L5 using L3
.catch java/security/NoSuchAlgorithmException from L6 to L7 using L2
.catch java/io/UnsupportedEncodingException from L6 to L7 using L3
aconst_null
astore 4
aconst_null
astore 3
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 5
L1:
aload 5
astore 3
aload 5
astore 4
L4:
aload 5
invokevirtual java/security/MessageDigest/reset()V
L5:
aload 5
astore 3
aload 5
astore 4
L6:
aload 5
aload 1
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
L7:
aload 5
astore 3
L8:
aload 3
invokevirtual java/security/MessageDigest/digest()[B
astore 1
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
iconst_0
istore 2
L9:
iload 2
aload 1
arraylength
if_icmpge L10
aload 1
iload 2
baload
sipush 255
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L11
aload 3
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
iload 2
baload
sipush 255
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L12:
iload 2
iconst_1
iadd
istore 2
goto L9
L2:
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "NoSuchAlgorithmException caught!"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
iconst_m1
invokestatic java/lang/System/exit(I)V
goto L8
L3:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
aload 4
astore 3
goto L8
L11:
aload 3
aload 1
iload 2
baload
sipush 255
iand
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L12
L10:
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 6
.limit stack 3
.end method

.method public followUser(ILjava/lang/String;Z)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "user"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 3
ifeq L5
iconst_1
istore 1
L3:
aload 5
ldc "follow"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/follow"
aload 5
aload 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 1
L4:
iload 1
sipush 200
if_icmpne L6
iconst_0
istore 4
L7:
iload 4
ireturn
L5:
iconst_0
istore 1
goto L3
L6:
iload 1
istore 4
iload 1
sipush 411
if_icmpne L7
bipush -6
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
bipush -5
ireturn
.limit locals 6
.limit stack 5
.end method

.method public getBindUrl(I)Ljava/lang/String;
ldc "%sbind.php?snstype=%d&sid=%s"
iconst_3
anewarray java/lang/Object
dup
iconst_0
ldc "https://share.oap.99.com/share/"
aastore
dup
iconst_1
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public isFollowedUser(ILjava/lang/String;Ljava/lang/StringBuffer;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L6
.catch java/lang/Exception from L7 to L8 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "user"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/isfollowed"
aload 5
aload 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 4
L1:
iload 4
sipush 200
if_icmpne L9
iconst_0
ireturn
L9:
iload 4
sipush 412
if_icmpne L10
iload 4
istore 1
aload 2
ifnull L11
iload 4
istore 1
L3:
aload 2
invokevirtual java/lang/StringBuffer/length()I
ifle L11
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/microblogging/help/StrFun/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
L4:
aload 3
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
iload 4
ireturn
L6:
astore 2
L7:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
L8:
iload 4
ireturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
L10:
iconst_1
istore 1
L11:
iload 1
ireturn
.limit locals 6
.limit stack 5
.end method

.method public isLogin()Z
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public loginByDeviceID(ILjava/lang/String;Ljava/lang/String;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
bipush -5
istore 5
iload 5
istore 4
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L1:
iload 5
istore 4
L3:
aload 6
ldc "devnum"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
iload 5
istore 4
L5:
aload 6
ldc "appid"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
iload 5
istore 4
L7:
aload 6
ldc "code"
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/microblogging/ServerInterface/getMD5Str(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
iload 5
istore 4
L9:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
L10:
iload 5
istore 4
L11:
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/login"
aload 6
aload 2
aconst_null
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 1
L12:
iload 1
istore 4
L13:
ldc "ggg"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "ggg\u0009ireturn="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L14:
iload 1
sipush 200
if_icmpne L17
iload 1
istore 4
L15:
aload 0
new org/json/JSONObject
dup
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "sharesid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
L16:
iconst_0
istore 4
L18:
iload 4
ireturn
L17:
iload 1
istore 4
iload 1
sipush 413
if_icmpne L18
bipush -3
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
iload 4
ireturn
.limit locals 7
.limit stack 5
.end method

.method public loginOut()V
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/logout"
aconst_null
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
pop
aload 0
ldc ""
putfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public queryBind(ILcom/nd/rj/common/microblogging/SNSUserInfo;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
bipush -5
istore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
iload 4
istore 3
L0:
aload 5
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 4
istore 3
L3:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 6
L4:
iload 4
istore 3
L5:
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/querybind"
aload 5
aload 6
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 4
L6:
iload 4
istore 3
L7:
ldc "Sns-bind"
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
iload 4
sipush 200
if_icmpne L11
iconst_0
istore 3
iconst_0
istore 4
iload 4
istore 1
aload 2
ifnull L12
L9:
aload 2
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/SNSUserInfo/setJsonString(Ljava/lang/String;)V
L10:
iload 4
istore 1
L12:
iload 1
ireturn
L11:
iload 4
istore 1
iload 4
sipush 413
if_icmpne L12
bipush -3
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
iload 3
ireturn
.limit locals 7
.limit stack 5
.end method

.method public querySNSType(Ljava/lang/StringBuffer;)I
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/querysupports"
aload 1
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoGet(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 3
iload 3
istore 2
iload 3
sipush 200
if_icmpne L0
iconst_0
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public shareBitMapText(ILjava/lang/String;Landroid/graphics/Bitmap;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L3 to L5 using L4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
ldc ""
astore 5
L0:
aload 3
invokestatic com/nd/rj/common/microblogging/help/FileFun/Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
astore 3
ldc "test"
ldc "%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
arraylength
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/String
dup
new org/bouncycastle/util/encoders/BASE64Encoder
dup
aload 3
invokespecial org/bouncycastle/util/encoders/BASE64Encoder/<init>([B)V
invokevirtual org/bouncycastle/util/encoders/BASE64Encoder/encode()[C
invokespecial java/lang/String/<init>([C)V
astore 3
L1:
aload 6
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "text"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
invokevirtual java/lang/String/length()I
ifle L3
aload 6
ldc "imagetype"
ldc "png"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "imagename"
ldc "bitmap"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "imagedata"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/shareimage"
aload 6
aload 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 1
L5:
iload 1
istore 4
iload 1
sipush 200
if_icmpne L6
iconst_0
istore 4
L6:
iload 4
ireturn
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
aload 5
astore 3
goto L1
L4:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
bipush -5
ireturn
.limit locals 7
.limit stack 6
.end method

.method public shareImageText(ILjava/lang/String;Ljava/io/File;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L4 to L6 using L5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
ldc ""
astore 5
L0:
new java/lang/String
dup
new org/bouncycastle/util/encoders/BASE64Encoder
dup
aload 3
invokestatic com/nd/rj/common/microblogging/help/FileFun/GetFileBytes(Ljava/io/File;)[B
invokespecial org/bouncycastle/util/encoders/BASE64Encoder/<init>([B)V
invokevirtual org/bouncycastle/util/encoders/BASE64Encoder/encode()[C
invokespecial java/lang/String/<init>([C)V
astore 6
L1:
aload 6
astore 5
L3:
aload 7
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "text"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
invokevirtual java/lang/String/length()I
ifle L4
aload 7
ldc "imagetype"
aload 3
invokestatic com/nd/rj/common/microblogging/help/FileFun/getFileExt(Ljava/io/File;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "imagename"
aload 3
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "imagedata"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/shareimage"
aload 7
aload 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 1
L6:
iload 1
istore 4
iload 1
sipush 200
if_icmpne L7
iconst_0
istore 4
L7:
iload 4
ireturn
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L3
L5:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
bipush -5
ireturn
.limit locals 8
.limit stack 5
.end method

.method public shareText(ILjava/lang/String;)I
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "text"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/sharetext"
aload 4
aload 2
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 1
L1:
iload 1
sipush 200
if_icmpne L3
iconst_0
istore 3
L4:
iload 3
ireturn
L3:
iload 1
sipush 411
if_icmpne L5
bipush -6
ireturn
L5:
iload 1
istore 3
iload 1
sipush 413
if_icmpne L4
bipush -3
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
bipush -5
ireturn
.limit locals 5
.limit stack 5
.end method

.method public unbind(I)I
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "snstype"
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/httpTool Lcom/nd/rj/common/microblogging/help/HttpTool;
ldc "https://share.oap.99.com/share/index.php/unbind"
aload 3
aload 4
aload 0
getfield com/nd/rj/common/microblogging/ServerInterface/sessionid Ljava/lang/String;
invokevirtual com/nd/rj/common/microblogging/help/HttpTool/DoPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuffer;Ljava/lang/String;)I
istore 1
L1:
iload 1
sipush 200
if_icmpne L3
iconst_0
istore 2
L4:
iload 2
ireturn
L3:
iload 1
istore 2
iload 1
sipush 413
if_icmpne L4
bipush -3
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
bipush -5
ireturn
.limit locals 5
.limit stack 5
.end method
