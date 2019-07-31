.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/AbsNodeData
.super java/lang/Object

.field public static final 'NODE_TYPE_5iUPCLASS' I = -2


.field public static final 'NODE_TYPE_DEPART' I = -1


.field public static final 'NODE_TYPE_JMCLASS' I = -3


.field public static final 'NODE_TYPE_JMSTUDENT' I = -5


.field public static final 'NODE_TYPE_UNIT_ND_WORKER' I = -11


.field public static final 'NODE_TYPE_UNIT_XY_STUDENT_CLASS' I = -14


.field public static final 'NODE_TYPE_UNIT_XY_WORKER' I = -12


.field public static final 'NODE_TYPE_UNIT_XY_WORKER_CLASS' I = -13


.field public static final 'NODE_TYPE_WORKER' I = -4


.field private 'absusercount' I

.field private 'appendix' Ljava/lang/String;

.field private 'avatar' Ljava/lang/String;

.field private 'name' Ljava/lang/String;

.field private 'node_id' J

.field private 'signature' Ljava/lang/String;

.field private 'systemAavatar' I

.field private 'type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/AbsNodeData/type I
aload 0
lconst_0
putfield com/product/android/commonInterface/contact/AbsNodeData/node_id J
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/AbsNodeData/name Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/AbsNodeData/appendix Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/AbsNodeData/signature Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/AbsNodeData/avatar Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/AbsNodeData/absusercount I
aload 0
iconst_1
putfield com/product/android/commonInterface/contact/AbsNodeData/systemAavatar I
return
.limit locals 1
.limit stack 3
.end method

.method public getAbsUsercount()I
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/absusercount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getAppendix()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/appendix Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNode_id()J
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/node_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSignature()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/signature Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSystemAavatar()I
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/systemAavatar I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/product/android/commonInterface/contact/AbsNodeData/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAbsUsercount(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/absusercount I
return
.limit locals 2
.limit stack 2
.end method

.method public setAppendix(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/appendix Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNode_id(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/node_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setSignature(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/signature Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSystemAavatar(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/systemAavatar I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/AbsNodeData/type I
return
.limit locals 2
.limit stack 2
.end method
