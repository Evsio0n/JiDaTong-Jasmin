.bytecode 50.0
.class public final synchronized com/nd/android/u/controller/factory/ChatBottomFunctionFactory
.super java/lang/Object
.inner class public static abstract interface ISpecialProccess inner com/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess outer com/nd/android/u/controller/factory/ChatBottomFunctionFactory

.field private static 'sInstance' Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;

.field private 'mIListGridItemlist' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IBottomFunction;>;"

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/sInstance Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/controller/factory/ChatBottomFunctionFactory/mIListGridItemlist Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/sInstance Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
ifnonnull L3
ldc com/nd/android/u/controller/factory/ChatBottomFunctionFactory
monitorenter
L0:
getstatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/sInstance Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
ifnonnull L1
new com/nd/android/u/controller/factory/ChatBottomFunctionFactory
dup
invokespecial com/nd/android/u/controller/factory/ChatBottomFunctionFactory/<init>()V
putstatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/sInstance Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
L1:
ldc com/nd/android/u/controller/factory/ChatBottomFunctionFactory
monitorexit
L3:
getstatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/sInstance Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
areturn
L2:
astore 0
L4:
ldc com/nd/android/u/controller/factory/ChatBottomFunctionFactory
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public addListGridItem(Lcom/nd/android/u/controller/innerInterface/IBottomFunction;)V
aload 0
getfield com/nd/android/u/controller/factory/ChatBottomFunctionFactory/mIListGridItemlist Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public buildMenuItems(Landroid/content/Context;IJ)Ljava/util/List;
.signature "(Landroid/content/Context;IJ)Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IBottomFunction;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/controller/factory/ChatBottomFunctionFactory/mIListGridItemlist Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L0:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 1
areturn
L1:
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IBottomFunction
astore 6
aload 6
iload 2
lload 3
invokeinterface com/nd/android/u/controller/innerInterface/IBottomFunction/isEnable(IJ)Z 3
ifeq L0
aload 1
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
.limit locals 7
.limit stack 4
.end method

.method public clearMenuItem()V
aload 0
getfield com/nd/android/u/controller/factory/ChatBottomFunctionFactory/mIListGridItemlist Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method
