.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/Organization
.super java/lang/Object

.field private 'addr' Ljava/lang/String;

.field private 'apply_user' Ljava/lang/String;

.field private 'contact' Ljava/lang/String;

.field private 'create_date' Ljava/lang/String;

.field private 'description' Ljava/lang/String;

.field private 'fax' Ljava/lang/String;

.field private 'industry' I

.field private 'industry_name' Ljava/lang/String;

.field private 'master' Ljava/lang/String;

.field private 'orgcode' Ljava/lang/String;

.field private 'orgid' I

.field private 'orgname' Ljava/lang/String;

.field private 'postcode' Ljava/lang/String;

.field private 'scale' I

.field private 'scale_name' Ljava/lang/String;

.field private 'telephone' Ljava/lang/String;

.field private 'uap_uid' J

.field private 'uid' J

.field private 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/bean/Organization/setJsonValue(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getAddr()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/addr Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getApply_user()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/apply_user Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContact()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/contact Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreate_date()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/create_date Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDescription()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/description Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFax()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/fax Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIndustry()I
aload 0
getfield com/nd/android/u/cloud/bean/Organization/industry I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIndustry_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/industry_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMaster()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/master Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOrgcode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/orgcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOrgid()I
aload 0
getfield com/nd/android/u/cloud/bean/Organization/orgid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrgname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/orgname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostcode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/postcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getScale()I
aload 0
getfield com/nd/android/u/cloud/bean/Organization/scale I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getScale_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/scale_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTelephone()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/telephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUap_uid()J
aload 0
getfield com/nd/android/u/cloud/bean/Organization/uap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/cloud/bean/Organization/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/bean/Organization/url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAddr(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/addr Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setApply_user(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/apply_user Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setContact(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/contact Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCreate_date(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/create_date Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/description Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFax(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/fax Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIndustry(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/Organization/industry I
return
.limit locals 2
.limit stack 2
.end method

.method public setIndustry_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/industry_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setJsonValue(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "orgid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/Organization/orgid I
aload 0
aload 1
ldc "uap_uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/cloud/bean/Organization/uap_uid J
aload 0
aload 1
ldc "orgcode"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/orgcode Ljava/lang/String;
aload 0
aload 1
ldc "orgname"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/orgname Ljava/lang/String;
aload 0
aload 1
ldc "industry"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/Organization/industry I
aload 0
aload 1
ldc "industry_name"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/industry_name Ljava/lang/String;
aload 0
aload 1
ldc "scale"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/Organization/scale I
aload 0
aload 1
ldc "scale_name"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/scale_name Ljava/lang/String;
aload 0
aload 1
ldc "description"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/description Ljava/lang/String;
aload 0
aload 1
ldc "master"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/master Ljava/lang/String;
aload 0
aload 1
ldc "contact"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/contact Ljava/lang/String;
aload 0
aload 1
ldc "telephone"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/telephone Ljava/lang/String;
aload 0
aload 1
ldc "addr"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/addr Ljava/lang/String;
aload 0
aload 1
ldc "postcode"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/postcode Ljava/lang/String;
aload 0
aload 1
ldc "fax"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/fax Ljava/lang/String;
aload 0
aload 1
ldc "url"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/url Ljava/lang/String;
aload 0
aload 1
ldc "apply_user"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/apply_user Ljava/lang/String;
aload 0
aload 1
ldc "create_date"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/Organization/create_date Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public setMaster(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/master Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrgcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/orgcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrgid(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/Organization/orgid I
return
.limit locals 2
.limit stack 2
.end method

.method public setOrgname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/orgname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/postcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setScale(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/Organization/scale I
return
.limit locals 2
.limit stack 2
.end method

.method public setScale_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/scale_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTelephone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/telephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUap_uid(J)V
aload 0
lload 1
putfield com/nd/android/u/cloud/bean/Organization/uap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/cloud/bean/Organization/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/bean/Organization/url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
