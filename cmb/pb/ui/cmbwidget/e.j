.bytecode 50.0
.class public synchronized cmb/pb/ui/cmbwidget/e
.super java/lang/Object

.field private 'a' I

.field private 'b' Ljava/security/Key;

.field private 'c' Ljava/util/List;

.method public <init>(ILjava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
iconst_0
istore 3
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield cmb/pb/ui/cmbwidget/e/a I
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/e/b Ljava/security/Key;
aload 0
aconst_null
putfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
aload 0
iload 1
putfield cmb/pb/ui/cmbwidget/e/a I
L0:
ldc "AES"
invokestatic javax/crypto/KeyGenerator/getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
astore 4
aload 4
new java/security/SecureRandom
dup
invokespecial java/security/SecureRandom/<init>()V
invokevirtual javax/crypto/KeyGenerator/init(Ljava/security/SecureRandom;)V
aload 0
aload 4
invokevirtual javax/crypto/KeyGenerator/generateKey()Ljavax/crypto/SecretKey;
putfield cmb/pb/ui/cmbwidget/e/b Ljava/security/Key;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
aload 2
invokestatic cmb/pb/util/a/b(Ljava/lang/String;)Z
ifne L7
L1:
iload 3
istore 1
L3:
iload 1
aload 2
invokevirtual java/lang/String/length()I
if_icmplt L5
L4:
return
L5:
aload 2
iload 1
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
aload 0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
invokeinterface java/util/List/size()I 0
aload 4
invokevirtual cmb/pb/ui/cmbwidget/e/a(ILjava/lang/String;)V
L6:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
L7:
return
.limit locals 5
.limit stack 4
.end method

.method public a()I
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public a(I)V
iload 1
ifle L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
ifnonnull L1
L0:
return
L1:
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public a(ILjava/lang/String;)V
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
invokeinterface java/util/List/size()I 0
aload 0
getfield cmb/pb/ui/cmbwidget/e/a I
if_icmplt L1
L0:
return
L1:
aload 2
invokestatic cmb/pb/util/a/b(Ljava/lang/String;)Z
ifne L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/b Ljava/security/Key;
ifnull L0
aload 2
aload 0
getfield cmb/pb/ui/cmbwidget/e/b Ljava/security/Key;
invokestatic cmb/pb/util/g/a(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
astore 2
aload 2
invokestatic cmb/pb/util/a/b(Ljava/lang/String;)Z
ifne L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
iload 1
aload 2
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public b()Ljava/lang/String;
aload 0
getfield cmb/pb/ui/cmbwidget/e/b Ljava/security/Key;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
ldc ""
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
iconst_0
istore 1
L2:
iload 1
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L3
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
aload 0
getfield cmb/pb/ui/cmbwidget/e/b Ljava/security/Key;
invokestatic cmb/pb/util/g/b(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
astore 3
aload 3
invokestatic cmb/pb/util/a/b(Ljava/lang/String;)Z
ifeq L4
aconst_null
areturn
L4:
aload 2
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 4
.limit stack 2
.end method

.method public c()V
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
ifnull L0
aload 0
getfield cmb/pb/ui/cmbwidget/e/c Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method
