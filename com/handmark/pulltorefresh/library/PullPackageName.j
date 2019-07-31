.bytecode 50.0
.class public final synchronized enum com/handmark/pulltorefresh/library/PullPackageName
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/handmark/pulltorefresh/library/PullPackageName;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/handmark/pulltorefresh/library/PullPackageName;

.field public static final enum 'INSTANCE' Lcom/handmark/pulltorefresh/library/PullPackageName;

.field private 'mPackageName' Ljava/lang/String;

.method static <clinit>()V
new com/handmark/pulltorefresh/library/PullPackageName
dup
ldc "INSTANCE"
iconst_0
invokespecial com/handmark/pulltorefresh/library/PullPackageName/<init>(Ljava/lang/String;I)V
putstatic com/handmark/pulltorefresh/library/PullPackageName/INSTANCE Lcom/handmark/pulltorefresh/library/PullPackageName;
iconst_1
anewarray com/handmark/pulltorefresh/library/PullPackageName
dup
iconst_0
getstatic com/handmark/pulltorefresh/library/PullPackageName/INSTANCE Lcom/handmark/pulltorefresh/library/PullPackageName;
aastore
putstatic com/handmark/pulltorefresh/library/PullPackageName/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullPackageName;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
aconst_null
putfield com/handmark/pulltorefresh/library/PullPackageName/mPackageName Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullPackageName;
ldc com/handmark/pulltorefresh/library/PullPackageName
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/handmark/pulltorefresh/library/PullPackageName
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullPackageName;
getstatic com/handmark/pulltorefresh/library/PullPackageName/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullPackageName;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/handmark/pulltorefresh/library/PullPackageName
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public getPackageName()Ljava/lang/String;
aload 0
getfield com/handmark/pulltorefresh/library/PullPackageName/mPackageName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPackageName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullPackageName/mPackageName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
