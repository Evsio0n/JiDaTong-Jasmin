.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapUnit
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'TAG' Ljava/lang/String; = "OapUnit"

.field private 'mclassid' I

.field private 'mcountUser' I

.field private 'misleaf' I

.field private 'mlevel' I

.field private 'mname' Ljava/lang/String;

.field private 'mparentId' I

.field private 'mseq' I

.field private 'mshortname' Ljava/lang/String;

.field private 'msubDepartList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"

.field private 'msubUnitList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"

.field private 'msubUserList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'muid' J

.field private 'munitcode' Ljava/lang/String;

.field private 'munitid' I

.field private 'munitmaster' Ljava/lang/String;

.field private 'munitname' Ljava/lang/String;

.field private 'munittype' I

.field private 'mupdatetime' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mclassid I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/OapUnit/mcountUser I
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mclassid I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/OapUnit/mcountUser I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/initJsonValue(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final SetJsonValue(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitname Ljava/lang/String;
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitid I
aload 0
aload 1
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitcode Ljava/lang/String;
aload 0
aload 1
ldc "shortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
aload 0
aload 1
ldc "unittype"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/munittype I
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mupdatetime Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitname Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mname Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public final addSubUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/msubUnitList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapUnit/msubUnitList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/msubUnitList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public final getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mclassid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getIsleaf()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/misleaf I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getLevel()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mlevel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getParentId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mparentId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getSeq()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mseq I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getShortname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSubDepartList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/msubDepartList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSubUnitList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/msubUnitList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSubUserList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/msubUserList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/muid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getUnitcode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUnitmaster()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitmaster Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitmaster Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitmaster Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public final getUnitname()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUnittype()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munittype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUpdatetime()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mupdatetime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUserCount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mcountUser I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final initJsonValue(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitname Ljava/lang/String;
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitid I
aload 0
aload 1
ldc "unitcode"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitcode Ljava/lang/String;
aload 0
aload 1
ldc "name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mname Ljava/lang/String;
aload 0
aload 1
ldc "shortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
aload 0
aload 1
ldc "unittype"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/munittype I
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mupdatetime Ljava/lang/String;
aload 0
aload 1
ldc "seq"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/mseq I
aload 0
aload 1
ldc "usercount"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/mcountUser I
aload 0
aload 1
ldc "parentId"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/mparentId I
return
.limit locals 2
.limit stack 3
.end method

.method public final setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mclassid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setIsleaf(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/misleaf I
return
.limit locals 2
.limit stack 2
.end method

.method public final setLevel(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mlevel I
return
.limit locals 2
.limit stack 2
.end method

.method public final setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setOapUnit(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "unit_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitid I
aload 0
aload 1
ldc "unit_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitname Ljava/lang/String;
aload 0
aload 1
ldc "unit_shortname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
aload 0
aload 1
ldc "unit_master"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitmaster Ljava/lang/String;
aload 0
aload 1
ldc "unit_code"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitcode Ljava/lang/String;
aload 0
aload 1
ldc "unit_type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapUnit/munittype I
return
.limit locals 2
.limit stack 3
.end method

.method public final setParentId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mparentId I
return
.limit locals 2
.limit stack 2
.end method

.method public final setSeq(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mseq I
return
.limit locals 2
.limit stack 2
.end method

.method public final setShortname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSubDepartList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/msubDepartList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSubUnitList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/msubUnitList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSubUserList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/msubUserList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/muid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setUnitcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnitmaster(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitmaster Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnitname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/munitname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnittype(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/munittype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUpdatetime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mupdatetime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUserCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapUnit/mcountUser I
return
.limit locals 2
.limit stack 2
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
ldc "[oapUnit]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",unitcode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munitcode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/muid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",levle"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mlevel I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",name="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/mname Ljava/lang/String;
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
getfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
getfield com/nd/android/u/contact/dataStructure/OapUnit/mupdatetime Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",unittype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapUnit/munittype I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
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
getfield com/nd/android/u/contact/dataStructure/OapUnit/mshortname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
