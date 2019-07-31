.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/OapOrganizationCom
.super com/nd/android/u/cloud/com/base/OapOrganizationSpportCom

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/com/base/OapOrganizationSpportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doUserBind(Ljava/lang/String;I)Ljava/lang/Object;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/cloud/com/OapOrganizationCom/doSupportUserBind(Ljava/lang/String;I)Lorg/json/JSONObject;
astore 1
iload 2
iconst_1
if_icmpne L0
new com/nd/android/u/contact/dataStructure/OapUnit
dup
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>()V
astore 3
aload 3
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setOapUnit(Lorg/json/JSONObject;)V
aload 3
areturn
L0:
new com/product/android/business/login/BindUser
dup
aload 1
invokespecial com/product/android/business/login/BindUser/<init>(Lorg/json/JSONObject;)V
areturn
.limit locals 4
.limit stack 3
.end method

.method public getOrgInfo(I)Lcom/nd/android/u/cloud/bean/Organization;
.throws com/common/android/utils/http/HttpException
new com/nd/android/u/cloud/bean/Organization
dup
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/com/OapOrganizationCom/getSupportOrgInfo(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/cloud/bean/Organization/<init>(Lorg/json/JSONObject;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public getOrgList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/bean/Organization;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 0
invokevirtual com/nd/android/u/cloud/com/OapOrganizationCom/getSupportOrgList()Lorg/json/JSONObject;
astore 4
aconst_null
astore 3
aload 3
astore 2
aload 4
ifnull L0
aload 4
ldc "orgs"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 2
aload 4
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L1:
aload 3
astore 2
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 3
new com/nd/android/u/cloud/bean/Organization
dup
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/cloud/bean/Organization/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 2
areturn
.limit locals 5
.limit stack 5
.end method
