.bytecode 50.0
.class public synchronized com/product/android/utils/HttpErrMsgUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseHttpErrMsg(ILjava/lang/String;)V
.throws com/common/android/utils/http/HttpException
new com/common/android/utils/http/HttpException
dup
aload 1
iload 0
invokespecial com/common/android/utils/http/HttpException/<init>(Ljava/lang/String;I)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public static parseHttpErrMsg(ILjava/lang/StringBuffer;)V
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
iload 0
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static parseHttpErrMsg(ILjava/lang/StringBuilder;)V
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
iload 0
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static parseHttpErrMsg(ILorg/json/JSONObject;)V
.throws com/common/android/utils/http/HttpException
iload 0
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILjava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static parseHttpErrMsg(Lorg/json/JSONObject;)V
.throws com/common/android/utils/http/HttpException
aload 0
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
aload 0
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/utils/HttpErrMsgUtils/parseHttpErrMsg(ILjava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method
