.bytecode 50.0
.class public synchronized abstract com/common/android/ui/wheel/AbstractWheelTextAdapter
.super com/common/android/ui/wheel/AbstractWheelAdapter

.field public static final 'DEFAULT_TEXT_COLOR' I = -15724528


.field public static final 'DEFAULT_TEXT_SIZE' I = 24


.field public static final 'LABEL_COLOR' I = -9437072


.field protected static final 'NO_RESOURCE' I = 0


.field public static final 'TEXT_VIEW_ITEM_RESOURCE' I = -1


.field protected 'context' Landroid/content/Context;

.field protected 'emptyItemResourceId' I

.field protected 'inflater' Landroid/view/LayoutInflater;

.field protected 'itemResourceId' I

.field protected 'itemTextResourceId' I

.field private 'textColor' I

.field private 'textSize' I

.method protected <init>(Landroid/content/Context;)V
aload 0
aload 1
iconst_m1
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/<init>(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
iconst_0
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/<init>(Landroid/content/Context;II)V
return
.limit locals 3
.limit stack 4
.end method

.method protected <init>(Landroid/content/Context;II)V
aload 0
invokespecial com/common/android/ui/wheel/AbstractWheelAdapter/<init>()V
aload 0
ldc_w -15724528
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textColor I
aload 0
bipush 24
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textSize I
aload 0
aload 1
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/context Landroid/content/Context;
aload 0
iload 2
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemResourceId I
aload 0
iload 3
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemTextResourceId I
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/inflater Landroid/view/LayoutInflater;
return
.limit locals 4
.limit stack 3
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
.catch java/lang/ClassCastException from L0 to L1 using L2
.catch java/lang/ClassCastException from L3 to L4 using L2
iload 2
ifne L1
L0:
aload 1
instanceof android/widget/TextView
ifeq L1
aload 1
checkcast android/widget/TextView
areturn
L1:
iload 2
ifeq L5
L3:
aload 1
iload 2
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
L4:
aload 1
areturn
L2:
astore 1
ldc "AbstractWheelAdapter"
ldc "You must supply a resource ID for a TextView"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/IllegalStateException
dup
ldc "AbstractWheelAdapter requires the resource ID to be a TextView"
aload 1
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L5:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
iload 1
tableswitch -1
L0
L1
default : L2
L2:
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/inflater Landroid/view/LayoutInflater;
iload 1
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
L1:
aconst_null
areturn
L0:
new android/widget/TextView
dup
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/context Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
areturn
.limit locals 3
.limit stack 4
.end method

.method protected configureTextView(Landroid/widget/TextView;)V
aload 1
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textColor I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 1
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 1
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textSize I
i2f
invokevirtual android/widget/TextView/setTextSize(F)V
aload 1
iconst_1
invokevirtual android/widget/TextView/setLines(I)V
aload 1
getstatic android/graphics/Typeface/SANS_SERIF Landroid/graphics/Typeface;
iconst_1
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 1
astore 3
aload 1
ifnonnull L0
aload 0
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/emptyItemResourceId I
aload 2
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/getView(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
L0:
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/emptyItemResourceId I
iconst_m1
if_icmpne L1
aload 3
instanceof android/widget/TextView
ifeq L1
aload 0
aload 3
checkcast android/widget/TextView
invokevirtual com/common/android/ui/wheel/AbstractWheelTextAdapter/configureTextView(Landroid/widget/TextView;)V
L1:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public getEmptyItemResource()I
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/emptyItemResourceId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
iload 1
iflt L0
iload 1
aload 0
invokevirtual com/common/android/ui/wheel/AbstractWheelTextAdapter/getItemsCount()I
if_icmpge L0
aload 2
astore 4
aload 2
ifnonnull L1
aload 0
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemResourceId I
aload 3
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/getView(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
L1:
aload 0
aload 4
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemTextResourceId I
invokespecial com/common/android/ui/wheel/AbstractWheelTextAdapter/getTextView(Landroid/view/View;I)Landroid/widget/TextView;
astore 5
aload 5
ifnull L2
aload 0
iload 1
invokevirtual com/common/android/ui/wheel/AbstractWheelTextAdapter/getItemText(I)Ljava/lang/CharSequence;
astore 3
aload 3
astore 2
aload 3
ifnonnull L3
ldc ""
astore 2
L3:
aload 5
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemResourceId I
iconst_m1
if_icmpne L2
aload 0
aload 5
invokevirtual com/common/android/ui/wheel/AbstractWheelTextAdapter/configureTextView(Landroid/widget/TextView;)V
L2:
aload 4
areturn
L0:
aconst_null
areturn
.limit locals 6
.limit stack 3
.end method

.method public getItemResource()I
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemResourceId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemTextResourceId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextColor()I
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textColor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextSize()I
aload 0
getfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setEmptyItemResource(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/emptyItemResourceId I
return
.limit locals 2
.limit stack 2
.end method

.method public setItemResource(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemResourceId I
return
.limit locals 2
.limit stack 2
.end method

.method public setItemTextResource(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/itemTextResourceId I
return
.limit locals 2
.limit stack 2
.end method

.method public setTextColor(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textColor I
return
.limit locals 2
.limit stack 2
.end method

.method public setTextSize(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/AbstractWheelTextAdapter/textSize I
return
.limit locals 2
.limit stack 2
.end method
