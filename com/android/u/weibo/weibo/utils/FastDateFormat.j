.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/FastDateFormat
.super java/text/Format
.inner class private static CharacterLiteral inner com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static abstract interface NumberRule inner com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static PaddedNumberField inner com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static Pair inner com/android/u/weibo/weibo/utils/FastDateFormat$Pair outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static abstract interface Rule inner com/android/u/weibo/weibo/utils/FastDateFormat$Rule outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static StringLiteral inner com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TextField inner com/android/u/weibo/weibo/utils/FastDateFormat$TextField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TimeZoneDisplayKey inner com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TimeZoneNameRule inner com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TimeZoneNumberRule inner com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TwelveHourField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TwentyFourHourField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwentyFourHourField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TwoDigitMonthField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitMonthField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TwoDigitNumberField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static TwoDigitYearField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitYearField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static UnpaddedMonthField inner com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField outer com/android/u/weibo/weibo/utils/FastDateFormat
.inner class private static UnpaddedNumberField inner com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedNumberField outer com/android/u/weibo/weibo/utils/FastDateFormat

.field public static final 'FULL' I = 0


.field public static final 'LONG' I = 1


.field public static final 'MEDIUM' I = 2


.field public static final 'SHORT' I = 3


.field private static final 'cDateInstanceCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Object;Lcom/android/u/weibo/weibo/utils/FastDateFormat;>;"

.field private static final 'cDateTimeInstanceCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Object;Lcom/android/u/weibo/weibo/utils/FastDateFormat;>;"

.field private static 'cDefaultPattern' Ljava/lang/String;

.field private static final 'cInstanceCache' Ljava/util/Map; signature "Ljava/util/Map<Lcom/android/u/weibo/weibo/utils/FastDateFormat;Lcom/android/u/weibo/weibo/utils/FastDateFormat;>;"

.field private static final 'cTimeInstanceCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Object;Lcom/android/u/weibo/weibo/utils/FastDateFormat;>;"

.field private static final 'cTimeZoneDisplayCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"

.field private static final 'serialVersionUID' J = 1L


.field private final 'mLocale' Ljava/util/Locale;

.field private final 'mLocaleForced' Z

.field private transient 'mMaxLengthEstimate' I

.field private final 'mPattern' Ljava/lang/String;

.field private transient 'mRules' [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;

.field private final 'mTimeZone' Ljava/util/TimeZone;

.field private final 'mTimeZoneForced' Z

.method static <clinit>()V
new java/util/HashMap
dup
bipush 7
invokespecial java/util/HashMap/<init>(I)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat/cInstanceCache Ljava/util/Map;
new java/util/HashMap
dup
bipush 7
invokespecial java/util/HashMap/<init>(I)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDateInstanceCache Ljava/util/Map;
new java/util/HashMap
dup
bipush 7
invokespecial java/util/HashMap/<init>(I)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat/cTimeInstanceCache Ljava/util/Map;
new java/util/HashMap
dup
bipush 7
invokespecial java/util/HashMap/<init>(I)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDateTimeInstanceCache Ljava/util/Map;
new java/util/HashMap
dup
bipush 7
invokespecial java/util/HashMap/<init>(I)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat/cTimeZoneDisplayCache Ljava/util/Map;
return
.limit locals 0
.limit stack 3
.end method

.method protected <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
iconst_1
istore 5
aload 0
invokespecial java/text/Format/<init>()V
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "The pattern must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
aload 2
ifnull L1
iconst_1
istore 4
L2:
aload 0
iload 4
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
aload 2
astore 1
aload 2
ifnonnull L3
invokestatic java/util/TimeZone/getDefault()Ljava/util/TimeZone;
astore 1
L3:
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
aload 3
ifnull L4
iload 5
istore 4
L5:
aload 0
iload 4
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocaleForced Z
aload 3
astore 1
aload 3
ifnonnull L6
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
astore 1
L6:
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
return
L1:
iconst_0
istore 4
goto L2
L4:
iconst_0
istore 4
goto L5
.limit locals 6
.limit stack 3
.end method

.method public static getDateInstance(I)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
aconst_null
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
aconst_null
aload 1
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
aload 1
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch java/lang/ClassCastException from L8 to L9 using L10
.catch all from L8 to L9 using L2
.catch all from L11 to L2 using L2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorenter
L0:
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 4
L1:
aload 1
ifnull L12
L3:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
aload 4
aload 1
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 4
L4:
aload 2
astore 3
aload 2
ifnonnull L6
L5:
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
astore 3
L6:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
aload 4
aload 3
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 5
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDateInstanceCache Ljava/util/Map;
aload 5
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat
astore 4
L7:
aload 4
astore 2
aload 4
ifnonnull L9
L8:
iload 0
aload 3
invokestatic java/text/DateFormat/getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
checkcast java/text/SimpleDateFormat
invokevirtual java/text/SimpleDateFormat/toPattern()Ljava/lang/String;
aload 1
aload 3
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
astore 2
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDateInstanceCache Ljava/util/Map;
aload 5
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L9:
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 2
areturn
L10:
astore 1
L11:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No date pattern for locale: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 1
athrow
L12:
goto L4
.limit locals 6
.limit stack 4
.end method

.method public static getDateTimeInstance(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
iload 1
aconst_null
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
iload 1
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
iload 1
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch java/lang/ClassCastException from L8 to L9 using L10
.catch all from L8 to L9 using L2
.catch all from L11 to L2 using L2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorenter
L0:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 5
L1:
aload 2
ifnull L12
L3:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
aload 5
aload 2
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 5
L4:
aload 3
astore 4
aload 3
ifnonnull L6
L5:
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
astore 4
L6:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
aload 5
aload 4
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 6
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDateTimeInstanceCache Ljava/util/Map;
aload 6
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat
astore 5
L7:
aload 5
astore 3
aload 5
ifnonnull L9
L8:
iload 0
iload 1
aload 4
invokestatic java/text/DateFormat/getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
checkcast java/text/SimpleDateFormat
invokevirtual java/text/SimpleDateFormat/toPattern()Ljava/lang/String;
aload 2
aload 4
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
astore 3
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDateTimeInstanceCache Ljava/util/Map;
aload 6
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L9:
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 3
areturn
L10:
astore 2
L11:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No date time pattern for locale: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 2
athrow
L12:
goto L4
.limit locals 7
.limit stack 4
.end method

.method private static getDefaultPattern()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorenter
L0:
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDefaultPattern Ljava/lang/String;
ifnonnull L1
new java/text/SimpleDateFormat
dup
invokespecial java/text/SimpleDateFormat/<init>()V
invokevirtual java/text/SimpleDateFormat/toPattern()Ljava/lang/String;
putstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDefaultPattern Ljava/lang/String;
L1:
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cDefaultPattern Ljava/lang/String;
astore 0
L3:
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/android/u/weibo/weibo/utils/FastDateFormat;
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getDefaultPattern()Ljava/lang/String;
aconst_null
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
aload 0
aconst_null
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
aload 0
aconst_null
aload 1
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
aload 0
aload 1
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorenter
L0:
new com/android/u/weibo/weibo/utils/FastDateFormat
dup
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat/<init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
astore 1
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cInstanceCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat
astore 2
L1:
aload 2
astore 0
aload 2
ifnonnull L4
aload 1
astore 0
L3:
aload 0
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/init()V
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cInstanceCache Ljava/util/Map;
aload 0
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 5
.end method

.method public static getTimeInstance(I)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
aconst_null
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
aconst_null
aload 1
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
iload 0
aload 1
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch java/lang/ClassCastException from L9 to L10 using L11
.catch all from L9 to L10 using L2
.catch all from L12 to L2 using L2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorenter
L0:
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 3
L1:
aload 1
ifnull L13
L3:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
aload 3
aload 1
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 3
L4:
aload 2
ifnull L14
L5:
new com/android/u/weibo/weibo/utils/FastDateFormat$Pair
dup
aload 3
aload 2
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$Pair/<init>(Ljava/lang/Object;Ljava/lang/Object;)V
astore 3
L6:
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cTimeInstanceCache Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat
astore 5
L7:
aload 5
astore 4
aload 5
ifnonnull L15
aload 2
astore 4
aload 2
ifnonnull L9
L8:
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
astore 4
L9:
iload 0
aload 4
invokestatic java/text/DateFormat/getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
checkcast java/text/SimpleDateFormat
invokevirtual java/text/SimpleDateFormat/toPattern()Ljava/lang/String;
aload 1
aload 4
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
astore 1
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cTimeInstanceCache Ljava/util/Map;
aload 3
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L10:
aload 1
astore 4
L15:
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 4
areturn
L11:
astore 1
L12:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No date pattern for locale: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 1
athrow
L14:
goto L6
L13:
goto L4
.limit locals 6
.limit stack 4
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorenter
L0:
new com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey
dup
aload 0
iload 1
iload 2
aload 3
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/<init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
astore 6
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cTimeZoneDisplayCache Ljava/util/Map;
aload 6
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 5
L1:
aload 5
astore 4
aload 5
ifnonnull L4
L3:
aload 0
iload 1
iload 2
aload 3
invokevirtual java/util/TimeZone/getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
astore 4
getstatic com/android/u/weibo/weibo/utils/FastDateFormat/cTimeZoneDisplayCache Ljava/util/Map;
aload 6
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 4
areturn
L2:
astore 0
ldc com/android/u/weibo/weibo/utils/FastDateFormat
monitorexit
aload 0
athrow
.limit locals 7
.limit stack 6
.end method

.method public static isTrue(ZLjava/lang/String;J)V
iload 0
ifne L0
new java/lang/IllegalArgumentException
dup
aload 1
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 4
.limit stack 8
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
.throws java/io/IOException
.throws java/lang/ClassNotFoundException
aload 1
invokevirtual java/io/ObjectInputStream/defaultReadObject()V
aload 0
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/init()V
return
.limit locals 2
.limit stack 1
.end method

.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mRules [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;
astore 5
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mRules [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;
arraylength
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 5
iload 3
aaload
aload 2
aload 1
invokeinterface com/android/u/weibo/weibo/utils/FastDateFormat$Rule/appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V 2
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 2
areturn
.limit locals 6
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/android/u/weibo/weibo/utils/FastDateFormat
ifne L0
L1:
iconst_0
ireturn
L0:
aload 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat
astore 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
if_acmpeq L2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L2:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
if_acmpeq L3
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L1
L3:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
if_acmpeq L4
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
invokevirtual java/util/Locale/equals(Ljava/lang/Object;)Z
ifeq L1
L4:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocaleForced Z
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocaleForced Z
if_icmpne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public format(J)Ljava/lang/String;
aload 0
new java/util/Date
dup
lload 1
invokespecial java/util/Date/<init>(J)V
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
aload 0
aload 1
new java/lang/StringBuffer
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mMaxLengthEstimate I
invokespecial java/lang/StringBuffer/<init>(I)V
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
new java/util/GregorianCalendar
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
invokespecial java/util/GregorianCalendar/<init>(Ljava/util/TimeZone;)V
astore 2
aload 2
aload 1
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 0
aload 2
new java/lang/StringBuffer
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mMaxLengthEstimate I
invokespecial java/lang/StringBuffer/<init>(I)V
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
aload 0
new java/util/Date
dup
lload 1
invokespecial java/util/Date/<init>(J)V
aload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
areturn
.limit locals 4
.limit stack 5
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
aload 1
instanceof java/util/Date
ifeq L0
aload 0
aload 1
checkcast java/util/Date
aload 2
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
areturn
L0:
aload 1
instanceof java/util/Calendar
ifeq L1
aload 0
aload 1
checkcast java/util/Calendar
aload 2
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
areturn
L1:
aload 1
instanceof java/lang/Long
ifeq L2
aload 0
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
aload 2
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
areturn
L2:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown class: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 2
aload 1
ifnonnull L3
ldc "<null>"
astore 1
L4:
new java/lang/IllegalArgumentException
dup
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
astore 1
goto L4
.limit locals 4
.limit stack 4
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
aload 1
astore 3
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
ifeq L0
aload 1
invokevirtual java/util/Calendar/getTimeInMillis()J
pop2
aload 1
invokevirtual java/util/Calendar/clone()Ljava/lang/Object;
checkcast java/util/Calendar
astore 3
aload 3
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
invokevirtual java/util/Calendar/setTimeZone(Ljava/util/TimeZone;)V
L0:
aload 0
aload 3
aload 2
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
areturn
.limit locals 4
.limit stack 3
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
new java/util/GregorianCalendar
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
invokespecial java/util/GregorianCalendar/<init>(Ljava/util/TimeZone;)V
astore 3
aload 3
aload 1
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 0
aload 3
aload 2
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getLocale()Ljava/util/Locale;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxLengthEstimate()I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mMaxLengthEstimate I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPattern()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTimeZone()Ljava/util/TimeZone;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTimeZoneOverridesCalendar()Z
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
iconst_1
istore 2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
istore 3
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
invokevirtual java/lang/Object/hashCode()I
istore 4
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
ifeq L0
iconst_1
istore 1
L1:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
invokevirtual java/util/Locale/hashCode()I
istore 5
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocaleForced Z
ifeq L2
L3:
iconst_0
iload 3
iadd
iload 4
iadd
iload 1
iadd
iload 5
iadd
iload 2
iadd
ireturn
L0:
iconst_0
istore 1
goto L1
L2:
iconst_0
istore 2
goto L3
.limit locals 6
.limit stack 2
.end method

.method protected init()V
aload 0
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/parsePattern()Ljava/util/List;
astore 3
aload 0
aload 3
aload 3
invokeinterface java/util/List/size()I 0
anewarray com/android/u/weibo/weibo/utils/FastDateFormat$Rule
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
checkcast [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mRules [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mRules [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;
arraylength
istore 2
L0:
iload 2
iconst_1
isub
istore 2
iload 2
iflt L1
iload 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mRules [Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;
iload 2
aaload
invokeinterface com/android/u/weibo/weibo/utils/FastDateFormat$Rule/estimateLength()I 0
iadd
istore 1
goto L0
L1:
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat/mMaxLengthEstimate I
return
.limit locals 4
.limit stack 3
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
aload 2
iconst_0
invokevirtual java/text/ParsePosition/setIndex(I)V
aload 2
iconst_0
invokevirtual java/text/ParsePosition/setErrorIndex(I)V
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method protected parsePattern()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/android/u/weibo/weibo/utils/FastDateFormat$Rule;>;"
new java/text/DateFormatSymbols
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
invokespecial java/text/DateFormatSymbols/<init>(Ljava/util/Locale;)V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 4
invokevirtual java/text/DateFormatSymbols/getEras()[Ljava/lang/String;
astore 8
aload 4
invokevirtual java/text/DateFormatSymbols/getMonths()[Ljava/lang/String;
astore 9
aload 4
invokevirtual java/text/DateFormatSymbols/getShortMonths()[Ljava/lang/String;
astore 10
aload 4
invokevirtual java/text/DateFormatSymbols/getWeekdays()[Ljava/lang/String;
astore 5
aload 4
invokevirtual java/text/DateFormatSymbols/getShortWeekdays()[Ljava/lang/String;
astore 6
aload 4
invokevirtual java/text/DateFormatSymbols/getAmPmStrings()[Ljava/lang/String;
astore 11
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 2
iconst_1
newarray int
astore 12
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 12
iconst_0
iload 1
iastore
aload 0
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
aload 12
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/parseToken(Ljava/lang/String;[I)Ljava/lang/String;
astore 4
aload 12
iconst_0
iaload
istore 1
aload 4
invokevirtual java/lang/String/length()I
istore 3
iload 3
ifne L2
L1:
aload 7
areturn
L2:
aload 4
iconst_0
invokevirtual java/lang/String/charAt(I)C
lookupswitch
39 : L3
68 : L4
69 : L5
70 : L6
71 : L7
72 : L8
75 : L9
77 : L10
83 : L11
87 : L12
90 : L13
97 : L14
100 : L15
104 : L16
107 : L17
109 : L18
115 : L19
119 : L20
121 : L21
122 : L22
default : L23
L23:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Illegal pattern component: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L7:
new com/android/u/weibo/weibo/utils/FastDateFormat$TextField
dup
iconst_0
aload 8
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TextField/<init>(I[Ljava/lang/String;)V
astore 4
L24:
aload 7
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L21:
iload 3
iconst_4
if_icmplt L25
aload 0
iconst_1
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L25:
getstatic com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitYearField/INSTANCE Lcom/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitYearField;
astore 4
goto L24
L10:
iload 3
iconst_4
if_icmplt L26
new com/android/u/weibo/weibo/utils/FastDateFormat$TextField
dup
iconst_2
aload 9
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TextField/<init>(I[Ljava/lang/String;)V
astore 4
goto L24
L26:
iload 3
iconst_3
if_icmpne L27
new com/android/u/weibo/weibo/utils/FastDateFormat$TextField
dup
iconst_2
aload 10
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TextField/<init>(I[Ljava/lang/String;)V
astore 4
goto L24
L27:
iload 3
iconst_2
if_icmpne L28
getstatic com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitMonthField/INSTANCE Lcom/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitMonthField;
astore 4
goto L24
L28:
getstatic com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField/INSTANCE Lcom/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField;
astore 4
goto L24
L15:
aload 0
iconst_5
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L16:
new com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField
dup
aload 0
bipush 10
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField/<init>(Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;)V
astore 4
goto L24
L8:
aload 0
bipush 11
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L18:
aload 0
bipush 12
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L19:
aload 0
bipush 13
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L11:
aload 0
bipush 14
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L5:
iload 3
iconst_4
if_icmpge L29
aload 6
astore 4
L30:
new com/android/u/weibo/weibo/utils/FastDateFormat$TextField
dup
bipush 7
aload 4
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TextField/<init>(I[Ljava/lang/String;)V
astore 4
goto L24
L29:
aload 5
astore 4
goto L30
L4:
aload 0
bipush 6
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L6:
aload 0
bipush 8
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L20:
aload 0
iconst_3
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L12:
aload 0
iconst_4
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L14:
new com/android/u/weibo/weibo/utils/FastDateFormat$TextField
dup
bipush 9
aload 11
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TextField/<init>(I[Ljava/lang/String;)V
astore 4
goto L24
L17:
new com/android/u/weibo/weibo/utils/FastDateFormat$TwentyFourHourField
dup
aload 0
bipush 11
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TwentyFourHourField/<init>(Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;)V
astore 4
goto L24
L9:
aload 0
bipush 10
iload 3
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
astore 4
goto L24
L22:
iload 3
iconst_4
if_icmplt L31
new com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
iconst_1
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/<init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V
astore 4
goto L24
L31:
new com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule
dup
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZone Ljava/util/TimeZone;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mTimeZoneForced Z
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mLocale Ljava/util/Locale;
iconst_0
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/<init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V
astore 4
goto L24
L13:
iload 3
iconst_1
if_icmpne L32
getstatic com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/INSTANCE_NO_COLON Lcom/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule;
astore 4
goto L24
L32:
getstatic com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/INSTANCE_COLON Lcom/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule;
astore 4
goto L24
L3:
aload 4
iconst_1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 4
aload 4
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L33
new com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral
dup
aload 4
iconst_0
invokevirtual java/lang/String/charAt(I)C
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral/<init>(C)V
astore 4
goto L24
L33:
new com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral
dup
aload 4
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral/<init>(Ljava/lang/String;)V
astore 4
goto L24
.limit locals 13
.limit stack 6
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
aload 2
iconst_0
iaload
istore 4
aload 1
invokevirtual java/lang/String/length()I
istore 7
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
istore 3
iload 3
bipush 65
if_icmplt L0
iload 3
bipush 90
if_icmple L1
L0:
iload 3
bipush 97
if_icmplt L2
iload 3
bipush 122
if_icmpgt L2
L1:
aload 8
iload 3
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L3:
iload 4
istore 5
iload 4
iconst_1
iadd
iload 7
if_icmpge L4
iload 4
istore 5
aload 1
iload 4
iconst_1
iadd
invokevirtual java/lang/String/charAt(I)C
iload 3
if_icmpne L4
aload 8
iload 3
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 4
iconst_1
iadd
istore 4
goto L3
L2:
aload 8
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iconst_0
istore 6
L5:
iload 4
istore 5
iload 4
iload 7
if_icmpge L4
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
istore 3
iload 3
bipush 39
if_icmpne L6
iload 4
iconst_1
iadd
iload 7
if_icmpge L7
aload 1
iload 4
iconst_1
iadd
invokevirtual java/lang/String/charAt(I)C
bipush 39
if_icmpne L7
iload 4
iconst_1
iadd
istore 4
aload 8
iload 3
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 6
istore 5
L8:
iload 4
iconst_1
iadd
istore 4
iload 5
istore 6
goto L5
L7:
iload 6
ifne L9
iconst_1
istore 5
L10:
goto L8
L9:
iconst_0
istore 5
goto L10
L6:
iload 6
ifne L11
iload 3
bipush 65
if_icmplt L12
iload 3
bipush 90
if_icmple L13
L12:
iload 3
bipush 97
if_icmplt L11
iload 3
bipush 122
if_icmpgt L11
L13:
iload 4
iconst_1
isub
istore 5
L4:
aload 2
iconst_0
iload 5
iastore
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L11:
aload 8
iload 3
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 6
istore 5
goto L8
.limit locals 9
.limit stack 3
.end method

.method protected selectNumberRule(II)Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
iload 2
tableswitch 1
L0
L1
default : L2
L2:
new com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField
dup
iload 1
iload 2
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/<init>(II)V
areturn
L0:
new com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedNumberField
dup
iload 1
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedNumberField/<init>(I)V
areturn
L1:
new com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField
dup
iload 1
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField/<init>(I)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "FastDateFormat["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat/mPattern Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
