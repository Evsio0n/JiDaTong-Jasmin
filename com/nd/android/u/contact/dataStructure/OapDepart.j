.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapDepart
.super com/product/android/commonInterface/contact/AbsNodeData
.implements java/io/Serializable

.field private static final 'TAG' Ljava/lang/String; = "OapDepart"

.field private 'allow_group' I

.field private 'deptid' I

.field private 'deptname' Ljava/lang/String;

.field private 'gid' J

.field private 'manager_uid' I

.field private 'manager_username' Ljava/lang/String;

.field private 'nodeUsercount' I

.field private 'parentid' I

.field private 'seq' I

.field private 'shortname' Ljava/lang/String;

.field private 'subDepartList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"

.field private 'uid' J

.field private 'unitid' I

.field private 'updatetime' Ljava/lang/String;

.field private 'usercount' I

.method public <init>()V
aload 0
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/unitid I
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/OapDepart/uid J
aload 0
aload 1
ldc "deptid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/deptid I
aload 0
aload 1
ldc "parentid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/parentid I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/parentid I
ifne L0
aload 0
aload 1
ldc "parent_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/parentid I
L0:
aload 0
aload 1
ldc "manager_uid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/manager_uid I
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapDepart/updatetime Ljava/lang/String;
aload 0
aload 1
ldc "deptname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapDepart/deptname Ljava/lang/String;
aload 0
aload 1
ldc "shortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapDepart/shortname Ljava/lang/String;
aload 0
aload 1
ldc "manager_username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapDepart/manager_username Ljava/lang/String;
aload 0
aload 1
ldc "seq"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/seq I
aload 0
aload 1
ldc "usercount"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/usercount I
aload 0
aload 1
ldc "allow_group"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapDepart/allow_group I
aload 0
aload 1
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/OapDepart/gid J
return
.limit locals 2
.limit stack 3
.end method

.method public addSubDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/subDepartList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapDepart/subDepartList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/subDepartList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public getAllow_group()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/allow_group I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDeptid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/deptid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDeptname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/deptname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getManager_uid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/manager_uid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getManager_username()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/manager_username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNodeUsercount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/nodeUsercount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getParentid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/parentid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSeq()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/seq I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getShortname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/shortname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSubDepartList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/subDepartList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdatetime()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/updatetime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserCount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/usercount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAllow_group(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/allow_group I
return
.limit locals 2
.limit stack 2
.end method

.method public setDeptid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/deptid I
return
.limit locals 2
.limit stack 2
.end method

.method public setDeptname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/deptname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public setManager_uid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/manager_uid I
return
.limit locals 2
.limit stack 2
.end method

.method public setManager_username(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/manager_username Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNodeUsercount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/nodeUsercount I
return
.limit locals 2
.limit stack 2
.end method

.method public setParentid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/parentid I
return
.limit locals 2
.limit stack 2
.end method

.method public setSeq(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/seq I
return
.limit locals 2
.limit stack 2
.end method

.method public setShortname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/shortname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSubDepartList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/subDepartList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/unitid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdatetime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/updatetime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapDepart/usercount I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
ldc "[oapDepart]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/deptid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",parentid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/parentid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",deptname="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/deptname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/unitid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/updatetime Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",shortname="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/shortname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",manager_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/manager_uid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",manager_username="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/manager_username Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",usercount="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/usercount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",nodeUsercount="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapDepart/nodeUsercount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
