.bytecode 50.0
.class public synchronized com/common/android/ui/wheel/ArrayWheelAdapter
.super com/common/android/ui/wheel/AbstractWheelTextAdapter
.signature "<T:Ljava/lang/Object;>Lcom/common/android/ui/wheel/AbstractWheelTextAdapter;"

.field private 'items' [Ljava/lang/Object; signature "[TT;"

.method public <init>(Landroid/content/Context;[Ljava/lang/Object;)V
.signature "(Landroid/content/Context;[TT;)V"
aload 0
aload 1
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/<init>(Landroid/content/Context;)V
aload 0
aload 2
putfield com/common/android/ui/wheel/ArrayWheelAdapter/items [Ljava/lang/Object;
return
.limit locals 3
.limit stack 2
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
iload 1
iflt L0
iload 1
aload 0
getfield com/common/android/ui/wheel/ArrayWheelAdapter/items [Ljava/lang/Object;
arraylength
if_icmpge L0
aload 0
getfield com/common/android/ui/wheel/ArrayWheelAdapter/items [Ljava/lang/Object;
iload 1
aaload
astore 2
aload 2
instanceof java/lang/CharSequence
ifeq L1
aload 2
checkcast java/lang/CharSequence
areturn
L1:
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public getItemsCount()I
aload 0
getfield com/common/android/ui/wheel/ArrayWheelAdapter/items [Ljava/lang/Object;
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public resetArray([Ljava/lang/Object;)V
.signature "([TT;)V"
aload 0
aload 1
putfield com/common/android/ui/wheel/ArrayWheelAdapter/items [Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method
