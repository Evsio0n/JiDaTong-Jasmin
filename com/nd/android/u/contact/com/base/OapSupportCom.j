.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapSupportCom
.super java/lang/Object

.field protected 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.field protected 'oapApiHttps' Lcom/common/android/utils/http/HttpComExt;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putfield com/nd/android/u/contact/com/base/OapSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 0
new com/common/android/utils/http/HttpComExt
dup
iconst_1
invokespecial com/common/android/utils/http/HttpComExt/<init>(I)V
putfield com/nd/android/u/contact/com/base/OapSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 1
.limit stack 4
.end method

.method public final setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/com/base/OapSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
ifnull L0
aload 0
getfield com/nd/android/u/contact/com/base/OapSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
