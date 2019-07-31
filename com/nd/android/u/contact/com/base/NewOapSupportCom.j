.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/NewOapSupportCom
.super java/lang/Object

.field protected 'oapApi' Lcom/common/android/utils/http/HttpComHandlerJsonCode;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpComHandlerJsonCode
dup
iconst_1
invokespecial com/common/android/utils/http/HttpComHandlerJsonCode/<init>(Z)V
putfield com/nd/android/u/contact/com/base/NewOapSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
return
.limit locals 1
.limit stack 4
.end method

.method public final setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/com/base/NewOapSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
ifnull L0
aload 0
getfield com/nd/android/u/contact/com/base/NewOapSupportCom/oapApi Lcom/common/android/utils/http/HttpComHandlerJsonCode;
aload 1
invokevirtual com/common/android/utils/http/HttpComHandlerJsonCode/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
