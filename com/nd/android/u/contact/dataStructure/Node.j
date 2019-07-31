.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/Node
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'mclassType' I

.field private 'mclassid' I

.field private 'mdeptid' I

.field private 'mfid' J

.field private 'mtype' I

.field private 'muid' J

.field private 'munitid' I

.field private 'muserCount' I

.field private 'mvirtualid' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(IIJIIII)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
putfield com/nd/android/u/contact/dataStructure/Node/muid J
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/munitid I
aload 0
iload 2
putfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
aload 0
lload 3
putfield com/nd/android/u/contact/dataStructure/Node/mfid J
aload 0
iload 7
putfield com/nd/android/u/contact/dataStructure/Node/mtype I
aload 0
iload 5
putfield com/nd/android/u/contact/dataStructure/Node/mclassid I
aload 0
iload 6
putfield com/nd/android/u/contact/dataStructure/Node/mvirtualid I
aload 0
iload 8
putfield com/nd/android/u/contact/dataStructure/Node/mclassType I
return
.limit locals 9
.limit stack 3
.end method

.method public final equals(Ljava/lang/Object;)Z
iconst_1
istore 2
aload 1
instanceof com/nd/android/u/contact/dataStructure/Node
ifeq L0
aload 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 1
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mtype I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mtype I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mtype I
tableswitch 0
L1
L2
L3
L4
L5
default : L0
L0:
iconst_0
istore 2
L6:
iload 2
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/munitid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/munitid I
if_icmpeq L6
iconst_0
ireturn
L2:
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
if_icmpeq L6
iconst_0
ireturn
L3:
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mfid J
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mfid J
lcmp
ifne L7
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
if_icmpne L7
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mclassType I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mclassType I
if_icmpne L7
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
if_icmpeq L6
L7:
iconst_0
ireturn
L4:
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
if_icmpeq L6
iconst_0
ireturn
L5:
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mvirtualid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mvirtualid I
if_icmpne L8
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
aload 1
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
if_icmpeq L6
L8:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public final getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getDeptid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mfid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mtype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/muid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/munitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUserCount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/muserCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getVirtualid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mvirtualid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final hashCode()I
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mtype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/mclassid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setDeptid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/Node/mfid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/mtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/Node/muid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/munitid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUserCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/muserCount I
return
.limit locals 2
.limit stack 2
.end method

.method public final setVirtualid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/Node/mvirtualid I
return
.limit locals 2
.limit stack 2
.end method

.method public final toString()Ljava/lang/String;
ldc "unitid=%s,deptid=%s,fid=%s,classid=%s,virtualid=%s,type=%s"
bipush 6
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/munitid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mdeptid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mfid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_3
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mclassid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_4
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mvirtualid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_5
aload 0
getfield com/nd/android/u/contact/dataStructure/Node/mtype I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 6
.end method
