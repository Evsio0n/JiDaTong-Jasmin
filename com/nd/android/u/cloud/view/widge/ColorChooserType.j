.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/ColorChooserType
.super java/lang/Object

.field private static final 'DEFINED_COLOR' I = 1


.field public static final 'DEFINED_COLOR_TYPE' Lcom/nd/android/u/cloud/view/widge/ColorChooserType;

.field private static final 'UNIVERSAL_COLOR' I = 2


.field public static final 'UNIVERSAL_COLOR_TYPE' Lcom/nd/android/u/cloud/view/widge/ColorChooserType;

.field private 'type' I

.method static <clinit>()V
new com/nd/android/u/cloud/view/widge/ColorChooserType
dup
iconst_1
invokespecial com/nd/android/u/cloud/view/widge/ColorChooserType/<init>(I)V
putstatic com/nd/android/u/cloud/view/widge/ColorChooserType/DEFINED_COLOR_TYPE Lcom/nd/android/u/cloud/view/widge/ColorChooserType;
new com/nd/android/u/cloud/view/widge/ColorChooserType
dup
iconst_2
invokespecial com/nd/android/u/cloud/view/widge/ColorChooserType/<init>(I)V
putstatic com/nd/android/u/cloud/view/widge/ColorChooserType/UNIVERSAL_COLOR_TYPE Lcom/nd/android/u/cloud/view/widge/ColorChooserType;
return
.limit locals 0
.limit stack 3
.end method

.method private <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/ColorChooserType/type I
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ColorChooserType/type I
return
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/cloud/view/widge/ColorChooserType
ifeq L0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ColorChooserType/getType()I
aload 1
checkcast com/nd/android/u/cloud/view/widge/ColorChooserType
invokevirtual com/nd/android/u/cloud/view/widge/ColorChooserType/getType()I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/cloud/view/widge/ColorChooserType/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ColorChooserType/getType()I
ireturn
.limit locals 1
.limit stack 1
.end method
