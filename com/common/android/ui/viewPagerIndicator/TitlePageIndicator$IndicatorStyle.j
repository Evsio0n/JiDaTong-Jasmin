.bytecode 50.0
.class public final synchronized enum com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;>;"
.inner class public static final enum IndicatorStyle inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle outer com/common/android/ui/viewPagerIndicator/TitlePageIndicator

.field private static final synthetic '$VALUES' [Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum 'None' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum 'Triangle' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum 'Underline' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;

.field public final 'value' I

.method static <clinit>()V
new com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
dup
ldc "None"
iconst_0
iconst_0
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/<init>(Ljava/lang/String;II)V
putstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/None Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
new com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
dup
ldc "Triangle"
iconst_1
iconst_1
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/<init>(Ljava/lang/String;II)V
putstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/Triangle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
new com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
dup
ldc "Underline"
iconst_2
iconst_2
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/<init>(Ljava/lang/String;II)V
putstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
iconst_3
anewarray com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
dup
iconst_0
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/None Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
aastore
dup
iconst_1
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/Triangle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
aastore
dup
iconst_2
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
aastore
putstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/$VALUES [Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
.signature "(I)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/value I
return
.limit locals 4
.limit stack 3
.end method

.method public static fromValue(I)Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
invokestatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/values()[Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 4
aload 4
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/value I
iload 0
if_icmpne L2
aload 4
areturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
ldc com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/$VALUES [Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
invokevirtual [Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
areturn
.limit locals 0
.limit stack 1
.end method
