.bytecode 50.0
.class public final synchronized com/nd/android/u/tast/experience/common/FileUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createSDDir(Ljava/lang/String;)Ljava/io/File;
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/mkdir()Z
pop
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public static createSDFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.throws java/io/IOException
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/createNewFile()Z
pop
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getFileURL()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "91nd"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getImageViewFromInternet(Ljava/lang/String;)Landroid/graphics/Bitmap;
.throws java/io/IOException
aconst_null
astore 1
new java/net/URL
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size=f40"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 2
aload 1
astore 0
aload 2
ifnull L0
aload 2
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
aload 2
sipush 3000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 2
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
aload 2
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
aload 1
astore 0
aload 2
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 200
if_icmpne L0
aload 2
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 0
L0:
aload 0
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getImageViewFromServer(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
.throws java/io/IOException
aconst_null
astore 2
iload 1
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size=f100"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
new java/net/URL
dup
aload 0
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 3
aload 2
astore 0
aload 3
ifnull L2
aload 3
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 3
aload 3
sipush 3000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 3
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
aload 3
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
aload 2
astore 0
aload 3
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 200
if_icmpne L2
aload 3
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 0
L2:
aload 0
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size=f40"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
goto L1
.limit locals 4
.limit stack 3
.end method

.method public static getInputSteamFromServer(Ljava/lang/String;Z)Ljava/io/InputStream;
.throws java/io/IOException
aconst_null
astore 2
iload 1
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size=f100"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
new java/net/URL
dup
aload 0
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 3
aload 2
astore 0
aload 3
ifnull L2
aload 3
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 3
aload 3
sipush 3000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 3
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
aload 3
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
aload 2
astore 0
aload 3
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 200
if_icmpne L2
aload 3
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 0
L2:
aload 0
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size=f40"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
goto L1
.limit locals 4
.limit stack 3
.end method

.method public static getInputStreamFromInternet(Ljava/lang/String;)Ljava/io/InputStream;
.throws java/io/IOException
aconst_null
astore 1
new java/net/URL
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size=f40"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 2
aload 1
astore 0
aload 2
ifnull L0
aload 2
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 2
aload 2
sipush 3000
invokevirtual java/net/HttpURLConnection/setConnectTimeout(I)V
aload 2
ldc "GET"
invokevirtual java/net/HttpURLConnection/setRequestMethod(Ljava/lang/String;)V
aload 2
iconst_1
invokevirtual java/net/HttpURLConnection/setDoInput(Z)V
aload 1
astore 0
aload 2
invokevirtual java/net/HttpURLConnection/getResponseCode()I
sipush 200
if_icmpne L0
aload 2
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
astore 0
L0:
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getPathURL()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "91nd"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "face"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static inputSD(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
.throws java/io/IOException
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch java/io/IOException from L4 to L6 using L7
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 3
invokevirtual java/io/File/createNewFile()Z
pop
aconst_null
astore 0
L0:
new java/io/FileOutputStream
dup
aload 3
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L1:
aload 1
astore 0
L8:
aload 2
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L6
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 85
aload 0
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
L3:
aload 0
invokevirtual java/io/FileOutputStream/flush()V
L4:
aload 0
invokevirtual java/io/FileOutputStream/close()V
L6:
aload 3
areturn
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
goto L8
L5:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L4
L7:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public static isFileExist(Ljava/lang/String;Ljava/lang/String;)Z
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static isPathExist(Ljava/lang/String;)Z
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ireturn
.limit locals 1
.limit stack 3
.end method
