.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapClass
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'classid' I

.field private 'classname' Ljava/lang/String;

.field private 'gid' I

.field private 'gid1' I

.field private 'gradeid' I

.field private 'isChecked' Z

.field private 'manager1' J

.field private 'manager2' J

.field private 'shortname' Ljava/lang/String;

.field private 'typeid' I

.field private 'uid' J

.field private 'unitid' I

.field private 'updatetime' I

.field private 'updatetime2' I

.field private 'usercount' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
putfield com/nd/android/u/contact/dataStructure/OapClass/classid I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapClass/classname Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getShortname()Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapClass/shortname Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getGid()I
putfield com/nd/android/u/contact/dataStructure/OapClass/gid I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getUsercount()I
putfield com/nd/android/u/contact/dataStructure/OapClass/usercount I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
putfield com/nd/android/u/contact/dataStructure/OapClass/manager1 J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager2()J
putfield com/nd/android/u/contact/dataStructure/OapClass/manager2 J
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/initJSONValue(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getClassname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/classname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/gid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGid1()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/gid1 I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGradeid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/gradeid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getManager1()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/manager1 J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getManager2()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/manager2 J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getShortname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/shortname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTypeid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/typeid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdatetime()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/updatetime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdatetime2()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/updatetime2 I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUsercount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/usercount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initJSONValue(Lorg/json/JSONObject;)V
aload 1
ifnull L0
aload 0
aload 1
ldc "classid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/classid I
aload 0
aload 1
ldc "classname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapClass/classname Ljava/lang/String;
aload 0
aload 1
ldc "shortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapClass/shortname Ljava/lang/String;
aload 0
aload 1
ldc "gradeid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/gradeid I
aload 0
aload 1
ldc "typeid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/typeid I
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/unitid I
aload 0
aload 1
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/gid I
aload 0
aload 1
ldc "gid1"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/gid1 I
aload 0
aload 1
ldc "usercount"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/usercount I
aload 0
aload 1
ldc "manager1"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/OapClass/manager1 J
aload 0
aload 1
ldc "manager2"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/OapClass/manager2 J
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/updatetime I
aload 0
aload 1
ldc "updatetime2"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapClass/updatetime2 I
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public isChecked()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClass/isChecked Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setChecked(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/isChecked Z
return
.limit locals 2
.limit stack 2
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setClassname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/classname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/gid I
return
.limit locals 2
.limit stack 2
.end method

.method public setGid1(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/gid1 I
return
.limit locals 2
.limit stack 2
.end method

.method public setGradeid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/gradeid I
return
.limit locals 2
.limit stack 2
.end method

.method public setManager1(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/manager1 J
return
.limit locals 3
.limit stack 3
.end method

.method public setManager2(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/manager2 J
return
.limit locals 3
.limit stack 3
.end method

.method public setShortname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/shortname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTypeid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/typeid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/unitid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdatetime(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/updatetime I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdatetime2(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/updatetime2 I
return
.limit locals 2
.limit stack 2
.end method

.method public setUsercount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClass/usercount I
return
.limit locals 2
.limit stack 2
.end method
