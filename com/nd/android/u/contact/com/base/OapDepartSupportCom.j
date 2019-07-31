.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapDepartSupportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'DEPTDEL' Ljava/lang/String; = "unit/deptdel"

.field private static final 'DEPTINFOURL' Ljava/lang/String; = "unit/deptinfo"

.field private static final 'DEPTLISTUPDATEURL' Ljava/lang/String; = "unit/deptlistupdate"

.field private static final 'DEPTPATHURL' Ljava/lang/String; = "unit/deptpath"

.field private static final 'DEPTSINFOURL' Ljava/lang/String; = "unit/deptsinfo"

.field private static final 'DEPTSURL' Ljava/lang/String; = "unit/depts"

.field private static final 'DEPTUPDATE' Ljava/lang/String; = "unit/deptupdate"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getDeptListupdate(JIIII)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/deptlistupdate"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
iconst_m1
if_icmpeq L0
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
iload 3
iconst_m1
if_icmpeq L2
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L2:
aload 7
ldc "&size=50"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
L0:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
.limit locals 8
.limit stack 4
.end method

.method public final getSupportDeptDel(JIII)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/deptdel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 3
iconst_m1
if_icmpeq L0
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&subid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 7
.limit stack 4
.end method

.method public final getSupportDeptInfo(I)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/deptinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 2
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 3
.end method

.method public final getSupportDeptPath(I)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/deptpath"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 2
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 3
.end method

.method public final getSupportDeptUpdate(JIII)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/deptupdate"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 3
iconst_m1
if_icmpeq L0
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&subid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 7
.limit stack 4
.end method

.method public final getSupportDepts(III)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuffer
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/depts"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 4
iload 1
iconst_m1
if_icmpeq L3
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
iload 3
iconst_1
if_icmpne L5
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&issub="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 4
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 5
L1:
aload 5
areturn
L3:
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L4
L2:
astore 5
aload 4
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 6
.limit stack 4
.end method

.method public final getSupportDeptsInfo(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/deptsinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 1
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/contact/com/base/OapDepartSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 3
.limit stack 3
.end method
