.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/OapUserSimple
.super com/product/android/commonInterface/contact/AbsNodeData
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'checked' Z

.field public 'fid' J

.field public 'gender' I

.field public 'isfollow' I

.field public 'signature' Ljava/lang/String;

.field public 'sysavatar' I

.field public 'type' I

.field public 'username' Ljava/lang/String;

.field public 'workid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/commonInterface/contact/OapUserSimple
ifeq L0
aload 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
lcmp
ifne L1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/workid Ljava/lang/String;
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/workid Ljava/lang/String;
if_acmpne L1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
if_icmpne L1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
ifnull L1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
ifnull L1
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
invokespecial java/lang/Object/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public hashCode()I
aload 0
invokespecial java/lang/Object/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isChecked()Z
aload 0
getfield com/product/android/commonInterface/contact/OapUserSimple/checked Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setChecked(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUserSimple/checked Z
return
.limit locals 2
.limit stack 2
.end method
