.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapGrade
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'TAG' Ljava/lang/String; = "OapGrade"

.field private 'begin_year' I

.field private 'mgradeid' I

.field private 'mgradename' Ljava/lang/String;

.field private 'misChecked' Z

.field public 'moapclass' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"

.field private 'mstatus' I

.field private 'mterm' I

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
invokevirtual com/nd/android/u/contact/dataStructure/OapGrade/initJSONValue(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final getBegin_year()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/begin_year I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getGradeid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/mgradeid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getGradename()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/mgradename Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getOapclass()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/moapclass Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getStatus()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/mstatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getTerm()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/mterm I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final initJSONValue(Lorg/json/JSONObject;)V
aload 1
ifnull L0
ldc "OapGrade"
ldc "[json]=%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 1
ldc "gradeid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapGrade/mgradeid I
aload 0
aload 1
ldc "gradename"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/OapGrade/mgradename Ljava/lang/String;
aload 0
aload 1
ldc "term"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapGrade/mterm I
aload 0
aload 1
ldc "begin_year"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapGrade/begin_year I
aload 0
aload 1
ldc "status"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/OapGrade/mstatus I
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public final isChecked()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGrade/misChecked Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setBegin_year(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/begin_year I
return
.limit locals 2
.limit stack 2
.end method

.method public final setChecked(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/misChecked Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setGradeid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/mgradeid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setGradename(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/mgradename Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setOapclass(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapClass;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/moapclass Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public final setStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/mstatus I
return
.limit locals 2
.limit stack 2
.end method

.method public final setTerm(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapGrade/mterm I
return
.limit locals 2
.limit stack 2
.end method
