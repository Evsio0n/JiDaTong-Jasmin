.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/dataStructure/Birthuserlist
.super java/lang/Object

.field private 'blesscount' J

.field private 'deptid' J

.field private 'deptname' Ljava/lang/String;

.field private 'isblessed' J

.field private 'sysAvatarId' I

.field private 'uid' J

.field private 'unit_id' J

.field private 'username' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getBlesscount()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/blesscount J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getDeptid()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/deptid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getDeptname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/deptname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIsblessed()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/isblessed J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSysAvatarId()I
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/sysAvatarId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnit_id()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/unit_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUsername()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setBlesscount(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/blesscount J
return
.limit locals 3
.limit stack 3
.end method

.method public setDeptid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/deptid J
return
.limit locals 3
.limit stack 3
.end method

.method public setDeptname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/deptname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsblessed(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/isblessed J
return
.limit locals 3
.limit stack 3
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/uid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/username Ljava/lang/String;
aload 0
aload 1
ldc "unit_id"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/unit_id J
aload 0
aload 1
ldc "deptid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/deptid J
aload 0
aload 1
ldc "deptname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/deptname Ljava/lang/String;
aload 0
aload 1
ldc "blesscount"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/blesscount J
aload 0
aload 1
ldc "isblessed"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/isblessed J
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/uid J
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 0
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/sysAvatarId I
return
.limit locals 2
.limit stack 4
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnit_id(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/unit_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/Birthuserlist/username Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
