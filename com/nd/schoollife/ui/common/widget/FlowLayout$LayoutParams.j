.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams
.super android/view/ViewGroup$LayoutParams
.inner class public static LayoutParams inner com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams outer com/nd/schoollife/ui/common/widget/FlowLayout

.field private static final 'NO_SPACING' I = -1


.field public 'centerJustified' Z

.field public 'gravity' I

.field public 'horizontalSpacing' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "layout"
mapping [& Landroid/view/ViewDebug$IntToString; = [@ = .annotation 
from I = -1
to s = "NO_SPACING"
.end annotation
 
.end annotation
.end field

.field public 'newLine' Z

.field public 'verticalSpacing' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "layout"
mapping [& Landroid/view/ViewDebug$IntToString; = [@ = .annotation 
from I = -1
to s = "NO_SPACING"
.end annotation
 
.end annotation
.end field

.field public 'weight' F

.field public 'x' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "layout"
.end annotation
.end field

.field public 'y' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "layout"
.end annotation
.end field

.method public <init>(II)V
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
aload 0
iconst_m1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
aload 0
iconst_m1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
aload 0
ldc_w -1.0F
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/newLine Z
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_m1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
aload 0
iconst_m1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
aload 0
ldc_w -1.0F
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/newLine Z
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
invokespecial android/view/ViewGroup$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
iconst_m1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
aload 0
iconst_m1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
aload 0
ldc_w -1.0F
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/newLine Z
return
.limit locals 2
.limit stack 2
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
.catch all from L0 to L1 using L2
aload 1
aload 2
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
L0:
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams_layout_horizontalSpacing I
iconst_m1
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams_layout_verticalSpacing I
iconst_m1
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams_layout_newLine I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/newLine Z
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams_android_layout_gravity I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/gravity I
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams_layout_weight I
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
invokevirtual android/content/res/TypedArray/getFloat(IF)F
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/weight F
aload 0
aload 1
getstatic com/nd/schoollife/R$styleable/FlowLayout_LayoutParams_layout_centerJustified I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/centerJustified Z
L1:
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
L2:
astore 2
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public horizontalSpacingSpecified()Z
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/horizontalSpacing I
iconst_m1
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setPosition(II)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/x I
aload 0
iload 2
putfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/y I
return
.limit locals 3
.limit stack 2
.end method

.method public verticalSpacingSpecified()Z
aload 0
getfield com/nd/schoollife/ui/common/widget/FlowLayout$LayoutParams/verticalSpacing I
iconst_m1
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
