.bytecode 50.0
.class public synchronized com/common/android/utils/httpRequest/AutoLoginHttpRequest
.super com/common/android/utils/httpRequest/OapHttpRequest
.inner class public static abstract interface IOnReLogin inner com/common/android/utils/httpRequest/AutoLoginHttpRequest$IOnReLogin outer com/common/android/utils/httpRequest/AutoLoginHttpRequest

.field private static '_instance' Lcom/common/android/utils/httpRequest/IHttpRequest;

.field protected 'mReLoginURL' Ljava/lang/String;

.method protected <init>(Landroid/content/Context;II)V
aload 0
aload 1
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/<init>(Landroid/content/Context;)V
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putstatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 2
.end method

.method private doReLoginOap(Ljava/lang/StringBuilder;)Z
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
astore 1
aload 0
aload 1
invokevirtual com/common/android/utils/httpRequest/AutoLoginHttpRequest/DoReplaceAfterRelgin(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;II)Lcom/common/android/utils/httpRequest/IHttpRequest;
getstatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/_instance Lcom/common/android/utils/httpRequest/IHttpRequest;
ifnonnull L0
new com/common/android/utils/httpRequest/AutoLoginHttpRequest
dup
aload 0
iload 1
iload 2
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/<init>(Landroid/content/Context;II)V
putstatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/_instance Lcom/common/android/utils/httpRequest/IHttpRequest;
L0:
getstatic com/common/android/utils/httpRequest/AutoLoginHttpRequest/_instance Lcom/common/android/utils/httpRequest/IHttpRequest;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected DoReplaceAfterRelgin(Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
ldc "sid="
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
iload 2
iconst_m1
if_icmpeq L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
ldc "&"
iload 2
iconst_4
iadd
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iconst_0
iload 2
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_m1
if_icmpeq L1
aload 4
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 3
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
L1:
aload 0
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
L0:
return
.limit locals 5
.limit stack 4
.end method

.method public doDelete(Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doDelete(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
iload 4
istore 3
iload 4
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 4
istore 3
aload 0
aload 2
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doDelete(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 3
L0:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method public doDownFile(Ljava/lang/String;Ljava/io/File;)I
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doDownFile(Ljava/lang/String;Ljava/io/File;)I
istore 4
iload 4
istore 3
iload 4
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 4
istore 3
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doDownFile(Ljava/lang/String;Ljava/io/File;)I
istore 3
L0:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method public doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
iload 4
istore 3
iload 4
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 4
istore 3
aload 0
aload 2
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 3
L0:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 5
istore 4
aload 0
aload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 5
istore 4
aload 0
aload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 5
istore 4
aload 0
aload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public doPost(Ljava/lang/String;[BLjava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;[BLjava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 5
istore 4
aload 0
aload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;[BLjava/lang/StringBuilder;)I
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public doPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 5
istore 4
aload 0
aload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public doPut(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPut(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
sipush 401
if_icmpne L0
aload 0
aload 1
putfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
iload 5
istore 4
aload 0
aload 3
invokespecial com/common/android/utils/httpRequest/AutoLoginHttpRequest/doReLoginOap(Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
aload 0
getfield com/common/android/utils/httpRequest/AutoLoginHttpRequest/mReLoginURL Ljava/lang/String;
aload 2
aload 3
invokespecial com/common/android/utils/httpRequest/OapHttpRequest/doPut(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method
