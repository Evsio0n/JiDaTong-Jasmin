.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/OapGroupRelation
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'CLASSMEMBER' I = 2


.field public static final 'DEPARTMEMBER' I = 1


.field public static final 'GROUPMEMBER' I = 0


.field public static final 'TEACHMEMBER' I = 3


.field public 'classid' I

.field private 'fid' J

.field private 'gid' J

.field private 'grade' I

.field private 'nickname' Ljava/lang/String;

.field private 'sex' I

.field private 'type' I

.field private 'uid' J

.field private 'updatetime' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/commonInterface/contact/OapGroupRelation
ifeq L0
aload 1
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 1
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getUid()J
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getUid()J
lcmp
ifne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lcmp
ifne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getClassid()I
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getClassid()I
if_icmpne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGid()J
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGid()J
lcmp
ifne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getType()I
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getType()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getClassid()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGid()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGrade()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/grade I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNickname()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/nickname Ljava/lang/String;
ifnull L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/nickname Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/nickname Ljava/lang/String;
areturn
L0:
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
lcmp
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getNickname()Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/fid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getSex()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/sex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUpdatetime()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroupRelation/updatetime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public initDiscussionByJSON(Lorg/json/JSONObject;J)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapGroupRelation/fid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroupRelation/nickname Ljava/lang/String;
aload 0
lload 2
putfield com/product/android/commonInterface/contact/OapGroupRelation/gid J
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/commonInterface/contact/OapGroupRelation/uid J
return
.limit locals 4
.limit stack 3
.end method

.method public initValueByJSON(Lorg/json/JSONObject;J)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapGroupRelation/fid J
aload 0
aload 1
ldc "grade"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroupRelation/grade I
aload 0
aload 1
ldc "nick"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroupRelation/nickname Ljava/lang/String;
aload 0
aload 1
ldc "sex"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroupRelation/sex I
aload 0
lload 2
putfield com/product/android/commonInterface/contact/OapGroupRelation/gid J
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/commonInterface/contact/OapGroupRelation/uid J
return
.limit locals 4
.limit stack 3
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public setGrade(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/grade I
return
.limit locals 2
.limit stack 2
.end method

.method public setNickname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/nickname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSex(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/sex I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/type I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUpdatetime(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroupRelation/updatetime J
return
.limit locals 3
.limit stack 3
.end method
