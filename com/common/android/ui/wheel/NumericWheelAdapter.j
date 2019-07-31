.bytecode 50.0
.class public synchronized com/common/android/ui/wheel/NumericWheelAdapter
.super com/common/android/ui/wheel/AbstractWheelTextAdapter

.field public static final 'DEFAULT_MAX_VALUE' I = 9


.field private static final 'DEFAULT_MIN_VALUE' I = 0


.field private 'format' Ljava/lang/String;

.field private 'maxValue' I

.field private 'minValue' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
iconst_0
bipush 9
invokespecial com/common/android/ui/wheel/NumericWheelAdapter/<init>(Landroid/content/Context;II)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;II)V
aload 0
aload 1
iload 2
iload 3
aconst_null
invokespecial com/common/android/ui/wheel/NumericWheelAdapter/<init>(Landroid/content/Context;IILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;IILjava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/<init>(Landroid/content/Context;)V
aload 0
iload 2
putfield com/common/android/ui/wheel/NumericWheelAdapter/minValue I
aload 0
iload 3
putfield com/common/android/ui/wheel/NumericWheelAdapter/maxValue I
aload 0
aload 4
putfield com/common/android/ui/wheel/NumericWheelAdapter/format Ljava/lang/String;
return
.limit locals 5
.limit stack 2
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
iload 1
iflt L0
iload 1
aload 0
invokevirtual com/common/android/ui/wheel/NumericWheelAdapter/getItemsCount()I
if_icmpge L0
aload 0
getfield com/common/android/ui/wheel/NumericWheelAdapter/minValue I
iload 1
iadd
istore 1
aload 0
getfield com/common/android/ui/wheel/NumericWheelAdapter/format Ljava/lang/String;
ifnull L1
aload 0
getfield com/common/android/ui/wheel/NumericWheelAdapter/format Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L1:
iload 1
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 5
.end method

.method public getItemsCount()I
aload 0
getfield com/common/android/ui/wheel/NumericWheelAdapter/maxValue I
aload 0
getfield com/common/android/ui/wheel/NumericWheelAdapter/minValue I
isub
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method
