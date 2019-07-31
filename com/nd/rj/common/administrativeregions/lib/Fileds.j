.bytecode 50.0
.class public synchronized com/nd/rj/common/administrativeregions/lib/Fileds
.super java/lang/Object

.field private static final 'CODE_REGEX' Ljava/lang/String; = "\\d{6}"

.field 'mCode' Ljava/lang/String;

.field 'mLevel' Lcom/nd/rj/common/administrativeregions/lib/Level;

.field 'mName' Ljava/lang/String;

.field 'mPY' Ljava/lang/String;

.field 'mPinyin' Ljava/lang/String;

.field 'mSuffix' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static isCodeValid(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
ldc "\\d{6}"
aload 0
invokestatic java/util/regex/Pattern/matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
ifeq L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getCode()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLevel()Lcom/nd/rj/common/administrativeregions/lib/Level;
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName(Z)Ljava/lang/String;
iload 1
ifeq L0
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mSuffix Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mName Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mName Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mSuffix Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mName Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method isValid()Z
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mCode Ljava/lang/String;
invokestatic com/nd/rj/common/administrativeregions/lib/Fileds/isCodeValid(Ljava/lang/String;)Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
ifnull L1
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
if_acmpeq L1
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mPinyin Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mPY Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method
