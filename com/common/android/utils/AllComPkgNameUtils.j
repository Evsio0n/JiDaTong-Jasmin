.bytecode 50.0
.class public final synchronized enum com/common/android/utils/AllComPkgNameUtils
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/utils/AllComPkgNameUtils;>;"

.field private static final synthetic '$VALUES' [Lcom/common/android/utils/AllComPkgNameUtils;

.field public static final enum 'INSTANCE' Lcom/common/android/utils/AllComPkgNameUtils;

.field private 'mPackageName' Ljava/lang/String;

.method static <clinit>()V
new com/common/android/utils/AllComPkgNameUtils
dup
ldc "INSTANCE"
iconst_0
invokespecial com/common/android/utils/AllComPkgNameUtils/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
iconst_1
anewarray com/common/android/utils/AllComPkgNameUtils
dup
iconst_0
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
aastore
putstatic com/common/android/utils/AllComPkgNameUtils/$VALUES [Lcom/common/android/utils/AllComPkgNameUtils;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
aconst_null
putfield com/common/android/utils/AllComPkgNameUtils/mPackageName Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/utils/AllComPkgNameUtils;
ldc com/common/android/utils/AllComPkgNameUtils
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/utils/AllComPkgNameUtils
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/utils/AllComPkgNameUtils;
getstatic com/common/android/utils/AllComPkgNameUtils/$VALUES [Lcom/common/android/utils/AllComPkgNameUtils;
invokevirtual [Lcom/common/android/utils/AllComPkgNameUtils;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/utils/AllComPkgNameUtils;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/AllComPkgNameUtils/mPackageName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
areturn
L0:
aload 0
getfield com/common/android/utils/AllComPkgNameUtils/mPackageName Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public setPackageName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/common/android/utils/AllComPkgNameUtils/mPackageName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
