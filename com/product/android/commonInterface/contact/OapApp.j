.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/OapApp
.super java/lang/Object

.field public 'appid' I

.field public 'buss_url' Ljava/lang/String;

.field private 'cfg' Ljava/lang/String;

.field public 'code' Ljava/lang/String;

.field public 'coercever' I

.field public 'display' I

.field public 'displayType' Z

.field public 'down_url' Ljava/lang/String;

.field private 'hasnewver' Z

.field public 'isLocal' I

.field public 'md5' Ljava/lang/String;

.field public 'menutype' Ljava/lang/String;

.field public 'name' Ljava/lang/String;

.field public 'notes' Ljava/lang/String;

.field public 'open_url' Ljava/lang/String;

.field public 'packet_name' Ljava/lang/String;

.field public 'product_code' Ljava/lang/String;

.field public 'res' I

.field public 'target' Ljava/lang/String;

.field private 'temp' Lorg/json/JSONObject;

.field public 'typename' Ljava/lang/String;

.field private 'uid' J

.field public 'updatetime' I

.field public 'ver' I

.field public 'vername' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/isLocal I
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/res I
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/updatetime I
aload 0
aconst_null
putfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/displayType Z
return
.limit locals 1
.limit stack 2
.end method

.method public getAppid()I
aload 0
getfield com/product/android/commonInterface/contact/OapApp/appid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getBuss_url()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/buss_url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCode()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDisplay()I
aload 0
getfield com/product/android/commonInterface/contact/OapApp/display I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDown_url()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/down_url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIsLocal()I
aload 0
getfield com/product/android/commonInterface/contact/OapApp/isLocal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMd5()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/md5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMenutype()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNotes()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/notes Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOpen_url()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/open_url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPacket_name()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/packet_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProduct_code()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/product_code Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRes()I
aload 0
getfield com/product/android/commonInterface/contact/OapApp/res I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTarget()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/target Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTypename()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/product/android/commonInterface/contact/OapApp/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getVer()I
aload 0
getfield com/product/android/commonInterface/contact/OapApp/ver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getVername()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/vername Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initValueByMenuJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
putfield com/product/android/commonInterface/contact/OapApp/uid J
aload 0
aload 1
ldc "appid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapApp/appid I
aload 0
aload 1
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 0
aload 1
ldc "name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
aload 0
aload 1
ldc "menutype"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
aload 0
aload 1
ldc "url"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/open_url Ljava/lang/String;
aload 0
aload 1
ldc "bussurl"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/buss_url Ljava/lang/String;
aload 0
aload 1
ldc "cfg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/cfg Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/cfg Ljava/lang/String;
ifnull L3
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapApp/cfg Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
getfield com/product/android/commonInterface/contact/OapApp/cfg Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
L0:
aload 0
new org/json/JSONObject
dup
aload 0
getfield com/product/android/commonInterface/contact/OapApp/cfg Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
putfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
aload 0
aload 0
getfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
ldc "30"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
putfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
ifnull L3
aload 0
aload 0
getfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
ldc "packet_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/packet_name Ljava/lang/String;
aload 0
aload 0
getfield com/product/android/commonInterface/contact/OapApp/temp Lorg/json/JSONObject;
ldc "product_code"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/product_code Ljava/lang/String;
L3:
aload 0
aload 1
ldc "target"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/target Ljava/lang/String;
aload 0
aload 1
ldc "display"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapApp/display I
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapApp/updatetime I
aload 0
iconst_1
putfield com/product/android/commonInterface/contact/OapApp/isLocal I
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public initValueByVerJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "ver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapApp/ver I
aload 0
aload 1
ldc "vername"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/vername Ljava/lang/String;
aload 0
aload 1
ldc "url"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/down_url Ljava/lang/String;
aload 0
aload 1
ldc "md5"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/md5 Ljava/lang/String;
aload 0
aload 1
ldc "notes"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapApp/notes Ljava/lang/String;
aload 0
aload 1
ldc "coercever"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapApp/coercever I
return
.limit locals 2
.limit stack 3
.end method

.method public isHasnewver()Z
aload 0
getfield com/product/android/commonInterface/contact/OapApp/hasnewver Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAppid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/appid I
return
.limit locals 2
.limit stack 2
.end method

.method public setBuss_url(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/buss_url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDisplay(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/display I
return
.limit locals 2
.limit stack 2
.end method

.method public setDisplayType(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/displayType Z
return
.limit locals 2
.limit stack 2
.end method

.method public setDown_url(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/down_url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setHasnewver(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/hasnewver Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIsLocal(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/isLocal I
return
.limit locals 2
.limit stack 2
.end method

.method public setMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/md5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMenutype(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNotes(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/notes Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOpen_url(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/open_url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPacket_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/packet_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProduct_code(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/product_code Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRes(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/res I
return
.limit locals 2
.limit stack 2
.end method

.method public setTarget(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/target Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTypename(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapApp/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setVer(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapApp/ver I
return
.limit locals 2
.limit stack 2
.end method

.method public setVername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapApp/vername Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OapApp [uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/appid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", name="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", menutype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", open_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/open_url Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", buss_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/buss_url Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", packet_name="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/packet_name Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", product_code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/product_code Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", target="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/target Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", ver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/ver I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", vername="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/vername Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", down_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/down_url Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", md5="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/md5 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", notes="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapApp/notes Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
