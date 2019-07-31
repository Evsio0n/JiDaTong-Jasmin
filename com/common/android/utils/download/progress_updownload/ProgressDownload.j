.bytecode 50.0
.class public synchronized com/common/android/utils/download/progress_updownload/ProgressDownload
.super java/lang/Object
.inner class inner com/common/android/utils/download/progress_updownload/ProgressDownload$1
.inner class inner com/common/android/utils/download/progress_updownload/ProgressDownload$2

.field private static final 'CUR_SIZE' Ljava/lang/String; = "CUR_SIZE"

.field private static final 'FAIL' I = 257


.field private static final 'PROGRESS' I = 258


.field private static final 'SUCCESS' I = 256


.field private static final 'TOTAL_SIZE' Ljava/lang/String; = "TOTAL_SIZE"

.field private 'mIsDisconnected' Z

.field private 'mProgressHandler' Landroid/os/Handler;

.field private 'mProgressListener' Lcom/common/android/utils/download/progress_updownload/IProgressListener;

.method public <init>(Lcom/common/android/utils/download/progress_updownload/IProgressListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/download/progress_updownload/ProgressDownload/mIsDisconnected Z
aload 0
new com/common/android/utils/download/progress_updownload/ProgressDownload$1
dup
aload 0
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload$1/<init>(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)V
putfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;Ljava/lang/String;Ljava/io/File;)V
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/fetchFile(Ljava/lang/String;Ljava/io/File;)V
return
.limit locals 3
.limit stack 3
.end method

.method private fetchFile(Ljava/lang/String;Ljava/io/File;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L5 to L6 using L2
.catch java/lang/Exception from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/io/FileNotFoundException from L7 to L8 using L2
.catch java/lang/Exception from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/io/FileNotFoundException from L9 to L10 using L2
.catch java/lang/Exception from L9 to L10 using L3
.catch all from L9 to L10 using L4
.catch java/io/FileNotFoundException from L11 to L12 using L2
.catch java/lang/Exception from L11 to L12 using L3
.catch all from L11 to L12 using L4
.catch java/io/FileNotFoundException from L13 to L14 using L2
.catch java/lang/Exception from L13 to L14 using L3
.catch all from L13 to L14 using L4
.catch java/io/FileNotFoundException from L15 to L16 using L17
.catch java/lang/Exception from L15 to L16 using L18
.catch all from L15 to L16 using L19
.catch java/io/FileNotFoundException from L20 to L21 using L17
.catch java/lang/Exception from L20 to L21 using L18
.catch all from L20 to L21 using L19
.catch java/io/FileNotFoundException from L21 to L22 using L17
.catch java/lang/Exception from L21 to L22 using L18
.catch all from L21 to L22 using L19
.catch java/io/FileNotFoundException from L23 to L24 using L17
.catch java/lang/Exception from L23 to L24 using L18
.catch all from L23 to L24 using L19
.catch java/io/FileNotFoundException from L24 to L25 using L17
.catch java/lang/Exception from L24 to L25 using L18
.catch all from L24 to L25 using L19
.catch java/io/FileNotFoundException from L26 to L27 using L17
.catch java/lang/Exception from L26 to L27 using L18
.catch all from L26 to L27 using L19
.catch java/io/FileNotFoundException from L27 to L28 using L17
.catch java/lang/Exception from L27 to L28 using L18
.catch all from L27 to L28 using L19
.catch java/io/FileNotFoundException from L29 to L30 using L17
.catch java/lang/Exception from L29 to L30 using L18
.catch all from L29 to L30 using L19
.catch java/io/FileNotFoundException from L31 to L32 using L17
.catch java/lang/Exception from L31 to L32 using L18
.catch all from L31 to L32 using L19
.catch java/io/FileNotFoundException from L32 to L33 using L17
.catch java/lang/Exception from L32 to L33 using L18
.catch all from L32 to L33 using L19
.catch java/lang/Exception from L34 to L35 using L36
.catch java/lang/Exception from L37 to L38 using L36
.catch java/io/FileNotFoundException from L39 to L40 using L17
.catch java/lang/Exception from L39 to L40 using L18
.catch all from L39 to L40 using L19
.catch all from L41 to L42 using L4
.catch all from L43 to L44 using L4
.catch all from L45 to L46 using L4
.catch all from L47 to L48 using L4
.catch java/lang/Exception from L49 to L50 using L51
.catch java/lang/Exception from L52 to L53 using L51
.catch all from L54 to L55 using L4
.catch all from L56 to L57 using L4
.catch all from L58 to L59 using L4
.catch all from L60 to L61 using L4
.catch java/lang/Exception from L62 to L63 using L64
.catch java/lang/Exception from L65 to L66 using L64
.catch java/lang/Exception from L67 to L68 using L69
.catch java/lang/Exception from L70 to L71 using L69
aload 2
ifnonnull L72
L73:
return
L72:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 22
aload 0
iconst_0
putfield com/common/android/utils/download/progress_updownload/ProgressDownload/mIsDisconnected Z
aconst_null
astore 21
aconst_null
astore 20
aconst_null
astore 12
aconst_null
astore 18
aconst_null
astore 15
aconst_null
astore 19
aload 12
astore 17
aload 15
astore 14
aload 21
astore 13
aload 20
astore 16
L0:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L6
L1:
aload 12
astore 17
aload 15
astore 14
aload 21
astore 13
aload 20
astore 16
L5:
aload 2
invokevirtual java/io/File/delete()Z
pop
L6:
aload 12
astore 17
aload 15
astore 14
aload 21
astore 13
aload 20
astore 16
L7:
aload 2
invokevirtual java/io/File/createNewFile()Z
pop
L8:
aload 12
astore 17
aload 15
astore 14
aload 21
astore 13
aload 20
astore 16
L9:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
invokevirtual java/net/URL/openConnection()Ljava/net/URLConnection;
checkcast java/net/HttpURLConnection
astore 12
L10:
aload 12
astore 17
aload 15
astore 14
aload 12
astore 13
aload 12
astore 16
L11:
aload 12
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual java/net/HttpURLConnection/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L12:
aload 12
astore 17
aload 15
astore 14
aload 12
astore 13
aload 12
astore 16
L13:
new java/io/BufferedInputStream
dup
aload 12
invokevirtual java/net/HttpURLConnection/getInputStream()Ljava/io/InputStream;
sipush 8192
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;I)V
astore 15
L14:
lconst_0
lstore 8
lconst_0
lstore 6
L15:
aload 12
invokevirtual java/net/HttpURLConnection/getContentLength()I
i2l
lstore 10
L16:
lload 10
lstore 4
lload 10
lconst_0
lcmp
ifgt L21
L20:
aload 12
invokestatic com/common/android/utils/FileUtils/getContentLength(Ljava/net/HttpURLConnection;)J
lstore 4
L21:
new java/io/FileOutputStream
dup
aload 2
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial java/io/FileOutputStream/<init>(Ljava/lang/String;)V
astore 16
aload 16
invokevirtual java/io/FileOutputStream/getChannel()Ljava/nio/channels/FileChannel;
invokevirtual java/nio/channels/FileChannel/tryLock()Ljava/nio/channels/FileLock;
astore 13
L22:
aload 13
ifnull L39
L23:
aload 13
invokevirtual java/nio/channels/FileLock/isValid()Z
ifeq L39
sipush 4096
newarray byte
astore 14
L24:
aload 15
aload 14
invokevirtual java/io/BufferedInputStream/read([B)I
istore 3
L25:
iload 3
ifle L31
L26:
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mIsDisconnected Z
ifeq L27
ldc "debug"
ldc "network disconnected"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 16
invokevirtual java/io/FileOutputStream/close()V
aload 0
ldc "network disconnected"
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
L27:
aload 16
aload 14
iconst_0
iload 3
invokevirtual java/io/FileOutputStream/write([BII)V
L28:
lload 4
lconst_0
lcmp
ifle L24
lload 8
iload 3
i2l
ladd
lstore 10
lload 10
lstore 8
lload 10
lload 6
lsub
iconst_4
lshl
lload 4
lcmp
ifle L24
L29:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 17
aload 17
ldc "CUR_SIZE"
lload 10
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 17
ldc "TOTAL_SIZE"
lload 4
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 18
aload 18
sipush 258
putfield android/os/Message/what I
aload 18
aload 17
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
aload 18
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L30:
lload 10
lstore 6
lload 10
lstore 8
goto L24
L31:
aload 13
invokevirtual java/nio/channels/FileLock/release()V
aload 16
invokevirtual java/io/FileOutputStream/close()V
L32:
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 13
aload 13
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 13
sipush 256
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
aload 13
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L33:
aload 12
ifnull L74
aload 12
invokevirtual java/net/HttpURLConnection/disconnect()V
L74:
iconst_0
ifeq L35
L34:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L35:
aload 15
ifnull L38
L37:
aload 15
invokevirtual java/io/BufferedInputStream/close()V
L38:
return
L39:
aload 16
invokevirtual java/io/FileOutputStream/close()V
L40:
goto L32
L17:
astore 13
aload 12
astore 16
aload 15
astore 12
L75:
aload 12
astore 14
aload 16
astore 13
L41:
aload 22
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "server file not found:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L42:
aload 2
ifnull L46
aload 12
astore 14
aload 16
astore 13
L43:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L46
L44:
aload 12
astore 14
aload 16
astore 13
L45:
aload 2
invokevirtual java/io/File/delete()Z
pop
L46:
aload 12
astore 14
aload 16
astore 13
L47:
aload 0
aload 22
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
L48:
aload 16
ifnull L76
aload 16
invokevirtual java/net/HttpURLConnection/disconnect()V
L76:
iconst_0
ifeq L50
L49:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L50:
aload 12
ifnull L73
L52:
aload 12
invokevirtual java/io/BufferedInputStream/close()V
L53:
return
L51:
astore 1
aload 0
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/common/android/utils/download/progress_updownload/ProgressDownload/debug(Ljava/lang/String;)V
aload 0
aload 22
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
return
L36:
astore 1
aload 0
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/common/android/utils/download/progress_updownload/ProgressDownload/debug(Ljava/lang/String;)V
aload 0
aload 22
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
return
L3:
astore 15
aload 17
astore 12
aload 18
astore 1
L77:
aload 1
astore 14
aload 12
astore 13
L54:
aload 22
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Exception:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 15
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L55:
aload 2
ifnull L59
aload 1
astore 14
aload 12
astore 13
L56:
aload 2
invokevirtual java/io/File/exists()Z
ifeq L59
L57:
aload 1
astore 14
aload 12
astore 13
L58:
aload 2
invokevirtual java/io/File/delete()Z
pop
L59:
aload 1
astore 14
aload 12
astore 13
L60:
aload 0
aload 22
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
L61:
aload 12
ifnull L78
aload 12
invokevirtual java/net/HttpURLConnection/disconnect()V
L78:
iconst_0
ifeq L63
L62:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L63:
aload 1
ifnull L73
L65:
aload 1
invokevirtual java/io/BufferedInputStream/close()V
L66:
return
L64:
astore 1
aload 0
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/common/android/utils/download/progress_updownload/ProgressDownload/debug(Ljava/lang/String;)V
aload 0
aload 22
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
return
L4:
astore 1
aload 13
astore 12
L79:
aload 12
ifnull L80
aload 12
invokevirtual java/net/HttpURLConnection/disconnect()V
L80:
iconst_0
ifeq L68
L67:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L68:
aload 14
ifnull L71
L70:
aload 14
invokevirtual java/io/BufferedInputStream/close()V
L71:
aload 1
athrow
L69:
astore 2
aload 0
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/common/android/utils/download/progress_updownload/ProgressDownload/debug(Ljava/lang/String;)V
aload 0
aload 22
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/sendFailMessage(Ljava/lang/String;)V
goto L71
L19:
astore 1
aload 15
astore 14
goto L79
L18:
astore 13
aload 15
astore 1
aload 13
astore 15
goto L77
L2:
astore 12
aload 19
astore 12
goto L75
.limit locals 23
.limit stack 4
.end method

.method private sendFailMessage(Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 2
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 2
sipush 257
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressHandler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method protected debug(Ljava/lang/String;)V
ldc "debug"
aload 1
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public startDownload(Ljava/lang/String;Ljava/io/File;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
ifnonnull L1
L0:
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
ldc "null url or file"
invokeinterface com/common/android/utils/download/progress_updownload/IProgressListener/onFail(Ljava/lang/String;)V 1
return
L1:
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload/mProgressListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
invokeinterface com/common/android/utils/download/progress_updownload/IProgressListener/onStart()V 0
new java/lang/Thread
dup
new com/common/android/utils/download/progress_updownload/ProgressDownload$2
dup
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload$2/<init>(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;Ljava/lang/String;Ljava/io/File;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 3
.limit stack 7
.end method
