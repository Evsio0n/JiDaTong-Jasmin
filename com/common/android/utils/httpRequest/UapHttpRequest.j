.bytecode 50.0
.class public synchronized com/common/android/utils/httpRequest/UapHttpRequest
.super com/common/android/utils/httpRequest/HttpRequest
.inner class static synthetic inner com/common/android/utils/httpRequest/UapHttpRequest$1
.inner class private static SingletonHolder inner com/common/android/utils/httpRequest/UapHttpRequest$SingletonHolder outer com/common/android/utils/httpRequest/UapHttpRequest

.field private 'uid' J

.method private <init>()V
aload 0
aconst_null
invokespecial com/common/android/utils/httpRequest/HttpRequest/<init>(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 2
.end method

.method synthetic <init>(Lcom/common/android/utils/httpRequest/UapHttpRequest$1;)V
aload 0
invokespecial com/common/android/utils/httpRequest/UapHttpRequest/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/UapHttpRequest;
aload 0
putstatic com/common/android/utils/httpRequest/UapHttpRequest/mContext Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/UapHttpRequest$SingletonHolder/access$100()Lcom/common/android/utils/httpRequest/UapHttpRequest;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/HttpRequest/setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
aload 0
getfield com/common/android/utils/httpRequest/UapHttpRequest/uid J
lconst_0
lcmp
ifle L0
aload 1
new org/apache/http/message/BasicHeader
dup
ldc "PHPUID"
aload 0
getfield com/common/android/utils/httpRequest/UapHttpRequest/uid J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual org/apache/http/client/methods/HttpRequestBase/addHeader(Lorg/apache/http/Header;)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/common/android/utils/httpRequest/UapHttpRequest/uid J
return
.limit locals 3
.limit stack 3
.end method
