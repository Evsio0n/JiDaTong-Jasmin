.bytecode 50.0
.class public synchronized com/nd/rj/common/login/entity/ClientInfo
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 2452208207965080178L


.field private 'mAppid' Ljava/lang/String;

.field private 'mDeviceId' Ljava/lang/String;

.field private 'mDeviceType' Ljava/lang/String;

.field private 'mPacketId' Ljava/lang/String;

.field private 'mPlatform' I

.field private 'mPlatformVerion' Ljava/lang/String;

.field private 'mRelink' I

.field private 'mSysType' Ljava/lang/String;

.field private 'mSysVersion' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/login/entity/ClientInfo/mRelink I
aload 0
ldc ""
putfield com/nd/rj/common/login/entity/ClientInfo/mAppid Ljava/lang/String;
aload 0
bipush 30
putfield com/nd/rj/common/login/entity/ClientInfo/mPlatform I
aload 0
ldc ""
putfield com/nd/rj/common/login/entity/ClientInfo/mPlatformVerion Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/rj/common/login/entity/ClientInfo/mPacketId Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/rj/common/login/entity/ClientInfo/mDeviceId Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/rj/common/login/entity/ClientInfo/mDeviceType Ljava/lang/String;
aload 0
ldc "android"
putfield com/nd/rj/common/login/entity/ClientInfo/mSysType Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/rj/common/login/entity/ClientInfo/mSysVersion Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getAppid()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mAppid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeviceId()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mDeviceId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDeviceType()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mDeviceType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPacketid()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mPacketId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPlatform()I
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mPlatform I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPlatformver()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mPlatformVerion Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRelink()I
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mRelink I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSysType()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mSysType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSysVerion()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mSysVersion Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAppid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mAppid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDeviceId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mDeviceId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDeviceType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mDeviceType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPacketid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mPacketId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPlatform(I)V
aload 0
iload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mPlatform I
return
.limit locals 2
.limit stack 2
.end method

.method public setPlatformver(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mPlatformVerion Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRelink(I)V
aload 0
iload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mRelink I
return
.limit locals 2
.limit stack 2
.end method

.method public setSysType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mSysType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSysVerion(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/entity/ClientInfo/mSysVersion Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toJsonObject()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "relink"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mRelink I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "appid"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "platform"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mPlatform I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "platformver"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mPlatformVerion Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "packetid"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mPacketId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "deviceid"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mDeviceId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "devicetype"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mDeviceType Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "systype"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mSysType Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "sysver"
aload 0
getfield com/nd/rj/common/login/entity/ClientInfo/mSysVersion Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method
