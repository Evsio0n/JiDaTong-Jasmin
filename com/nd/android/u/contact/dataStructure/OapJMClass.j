.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapJMClass
.super com/product/android/commonInterface/contact/AbsNodeData
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'classid' I

.field private 'classname' Ljava/lang/String;

.field private 'classver' I

.field private 'gid' I

.field private 'isChecked' Z

.field private 'manager1' J

.field private 'manager2' J

.field private 'orgver' I

.field private 'shortname' Ljava/lang/String;

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
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/initJSONValue(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getClassname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/classname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getClassver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/classver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/gid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getManager1()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/manager1 J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getManager2()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/manager2 J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getOrgver()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/orgver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getShortname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/shortname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUsercount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/usercount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initJSONValue(Lorg/json/JSONObject;)V
aload 1
ifnull L0
aload 0
aload 1
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapJMClass/classid I
aload 0
aload 1
ldc "name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapJMClass/classname Ljava/lang/String;
aload 0
aload 1
ldc "shortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapJMClass/shortname Ljava/lang/String;
aload 0
aload 1
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapJMClass/gid I
aload 0
aload 1
ldc "usercount"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapJMClass/usercount I
aload 0
aload 1
ldc "manager1"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/OapJMClass/manager1 J
aload 0
aload 1
ldc "manager2"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/OapJMClass/manager2 J
aload 0
aload 1
ldc "orgver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapJMClass/orgver I
aload 0
aload 1
ldc "classver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapJMClass/classver I
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public isChecked()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/OapJMClass/isChecked Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setChecked(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/isChecked Z
return
.limit locals 2
.limit stack 2
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setClassname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/classname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setClassver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/classver I
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/gid I
return
.limit locals 2
.limit stack 2
.end method

.method public setManager1(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/manager1 J
return
.limit locals 3
.limit stack 3
.end method

.method public setManager2(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/manager2 J
return
.limit locals 3
.limit stack 3
.end method

.method public setOrgver(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/orgver I
return
.limit locals 2
.limit stack 2
.end method

.method public setShortname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/shortname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUsercount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapJMClass/usercount I
return
.limit locals 2
.limit stack 2
.end method
