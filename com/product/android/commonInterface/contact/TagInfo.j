.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/TagInfo
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -6919537623845751990L


.field private 'groupname' Ljava/lang/String;

.field private 'tagid' I

.field private 'tagname' Ljava/lang/String;

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/commonInterface/contact/TagInfo
ifeq L0
aload 1
checkcast com/product/android/commonInterface/contact/TagInfo
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagid()I
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/tagid I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getGroupname()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/groupname Ljava/lang/String;
ifnonnull L0
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/TagInfo/groupname Ljava/lang/String;
L0:
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/groupname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getTagid()I
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/tagid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTagname()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/tagname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public hashCode()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setGroupname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/TagInfo/groupname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/TagInfo/uid J
aload 0
aload 1
ldc "tagname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/TagInfo/tagname Ljava/lang/String;
aload 0
aload 1
ldc "tagid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/TagInfo/tagid I
return
.limit locals 2
.limit stack 3
.end method

.method public setTagid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/TagInfo/tagid I
return
.limit locals 2
.limit stack 2
.end method

.method public setTagname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/TagInfo/tagname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/TagInfo/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/TagInfo/tagname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
