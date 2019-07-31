.bytecode 50.0
.class public final synchronized enum com/nostra13/universalimageloader/core/assist/ViewScaleType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;>;"

.field private static synthetic '$SWITCH_TABLE$android$widget$ImageView$ScaleType' [I

.field public static final enum 'CROP' Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.field public static final enum 'FIT_INSIDE' Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
.catch java/lang/NoSuchFieldError from L9 to L11 using L12
.catch java/lang/NoSuchFieldError from L11 to L13 using L14
.catch java/lang/NoSuchFieldError from L13 to L15 using L16
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/$SWITCH_TABLE$android$widget$ImageView$ScaleType [I
astore 0
aload 0
ifnull L17
aload 0
areturn
L17:
invokestatic android/widget/ImageView$ScaleType/values()[Landroid/widget/ImageView$ScaleType;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic android/widget/ImageView$ScaleType/CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_1
iastore
L1:
aload 0
getstatic android/widget/ImageView$ScaleType/CENTER_CROP Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_2
iastore
L3:
aload 0
getstatic android/widget/ImageView$ScaleType/CENTER_INSIDE Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_3
iastore
L5:
aload 0
getstatic android/widget/ImageView$ScaleType/FIT_CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_4
iastore
L7:
aload 0
getstatic android/widget/ImageView$ScaleType/FIT_END Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_5
iastore
L9:
aload 0
getstatic android/widget/ImageView$ScaleType/FIT_START Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
bipush 6
iastore
L11:
aload 0
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
bipush 7
iastore
L13:
aload 0
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
bipush 8
iastore
L15:
aload 0
putstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/$SWITCH_TABLE$android$widget$ImageView$ScaleType [I
aload 0
areturn
L16:
astore 1
goto L15
L14:
astore 1
goto L13
L12:
astore 1
goto L11
L10:
astore 1
goto L9
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method static <clinit>()V
new com/nostra13/universalimageloader/core/assist/ViewScaleType
dup
ldc "FIT_INSIDE"
iconst_0
invokespecial com/nostra13/universalimageloader/core/assist/ViewScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/FIT_INSIDE Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
new com/nostra13/universalimageloader/core/assist/ViewScaleType
dup
ldc "CROP"
iconst_1
invokespecial com/nostra13/universalimageloader/core/assist/ViewScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
iconst_2
anewarray com/nostra13/universalimageloader/core/assist/ViewScaleType
dup
iconst_0
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/FIT_INSIDE Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aastore
dup
iconst_1
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aastore
putstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invokestatic com/nostra13/universalimageloader/core/assist/ViewScaleType/$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
aload 0
invokevirtual android/widget/ImageView/getScaleType()Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iaload
tableswitch 3
L0
L0
L0
L0
L0
default : L1
L1:
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
L0:
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/FIT_INSIDE Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
ldc com/nostra13/universalimageloader/core/assist/ViewScaleType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nostra13/universalimageloader/core/assist/ViewScaleType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nostra13/universalimageloader/core/assist/ViewScaleType
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
