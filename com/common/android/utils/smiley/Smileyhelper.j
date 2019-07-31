.bytecode 50.0
.class public synchronized com/common/android/utils/smiley/Smileyhelper
.super java/lang/Object
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
.inner class public EMOJI inner com/common/android/utils/smiley/Smileyhelper$EMOJI outer com/common/android/utils/smiley/Smileyhelper
.inner class MyUrlSpan inner com/common/android/utils/smiley/Smileyhelper$MyUrlSpan outer com/common/android/utils/smiley/Smileyhelper

.field public static final 'CAT' I = 4


.field public static final 'COLUMNS_CAT' I = 4


.field public static final 'COLUMNS_OTHER' I = 7


.field public static final 'COS' I = 3


.field public static final 'DEL_ID' I = 993


.field public static final 'EMOJI' I = 2


.field public static final 'HISTORY' I = 0


.field public static final 'NORMAL' I = 1


.field private static final 'NOT_FOUND' I = -2


.field public static final 'SIZE_CAT' I = 8


.field public static final 'SIZE_OTHER' I = 21


.field public static final 'UNKOWN_ID' I = 2157


.field private static 'instance' Lcom/common/android/utils/smiley/Smileyhelper;

.field private final 'EMOJI_INTERZONE' [I

.field private 'EMOJI_VALUES' [I

.field private final 'SP_VALUE' I

.field private final 'SP_VALUE1' I

.field private 'mCatList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mCatSize' I

.field private 'mCosList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mCosSize' I

.field private 'mEmojiList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mEmojiSize' I

.field private 'mHistoryList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mIsOpenSysBrowser' Z

.field private 'mNoResourceSmiley' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mNormalList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mSmileyAllList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mTipIdMaps' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"

.field private 'mUnicodeSmileyMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'smileyMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Lcom/common/android/utils/smiley/Smiley;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/utils/smiley/Smileyhelper/mCatSize I
aload 0
iconst_0
putfield com/common/android/utils/smiley/Smileyhelper/mCosSize I
aload 0
iconst_0
putfield com/common/android/utils/smiley/Smileyhelper/mEmojiSize I
aload 0
iconst_2
newarray int
dup
iconst_0
ldc_w 126980
iastore
dup
iconst_1
ldc_w 128709
iastore
putfield com/common/android/utils/smiley/Smileyhelper/EMOJI_INTERZONE [I
aload 0
sipush 169
putfield com/common/android/utils/smiley/Smileyhelper/SP_VALUE I
aload 0
sipush 174
putfield com/common/android/utils/smiley/Smileyhelper/SP_VALUE1 I
aload 0
bipush 21
newarray int
dup
iconst_0
sipush 9728
iastore
dup
iconst_1
sipush 9748
iastore
dup
iconst_2
sipush 9749
iastore
dup
iconst_3
sipush 9757
iastore
dup
iconst_4
sipush 9786
iastore
dup
iconst_5
sipush 9824
iastore
dup
bipush 6
sipush 9889
iastore
dup
bipush 7
sipush 9917
iastore
dup
bipush 8
sipush 9918
iastore
dup
bipush 9
sipush 9962
iastore
dup
bipush 10
sipush 9971
iastore
dup
bipush 11
sipush 9973
iastore
dup
bipush 12
sipush 9992
iastore
dup
bipush 13
sipush 9994
iastore
dup
bipush 14
sipush 9995
iastore
dup
bipush 15
sipush 9996
iastore
dup
bipush 16
sipush 10060
iastore
dup
bipush 17
sipush 10068
iastore
dup
bipush 18
sipush 10069
iastore
dup
bipush 19
sipush 11088
iastore
dup
bipush 20
sipush 11093
iastore
putfield com/common/android/utils/smiley/Smileyhelper/EMOJI_VALUES [I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mHistoryList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mNormalList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mCatList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mEmojiList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mCosList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mNoResourceSmiley Ljava/util/List;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mTipIdMaps Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/utils/smiley/Smileyhelper/mUnicodeSmileyMap Ljava/util/HashMap;
aload 0
iconst_0
putfield com/common/android/utils/smiley/Smileyhelper/mIsOpenSysBrowser Z
iconst_0
istore 1
getstatic com/common/android/utils/smiley/SmileyValueArray/NORMAL_ID [I
arraylength
istore 2
L0:
iload 1
iload 2
if_icmpge L1
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 3
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/NORMAL_ID [I
iload 1
iaload
putfield com/common/android/utils/smiley/Smiley/id I
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/NORMAL_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/NORMAL_TIP [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mNormalList Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_ID [I
arraylength
putfield com/common/android/utils/smiley/Smileyhelper/mEmojiSize I
iconst_0
istore 1
L2:
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mEmojiSize I
if_icmpge L3
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 3
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_ID [I
iload 1
iaload
putfield com/common/android/utils/smiley/Smiley/id I
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_TIP [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_UNICODE [I
iload 1
iaload
putfield com/common/android/utils/smiley/Smiley/unicode I
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_HEX [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/utf8Code Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mEmojiList Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mUnicodeSmileyMap Ljava/util/HashMap;
aload 3
getfield com/common/android/utils/smiley/Smiley/unicode I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 0
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_ID [I
arraylength
putfield com/common/android/utils/smiley/Smileyhelper/mCosSize I
iconst_0
istore 1
L4:
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCosSize I
if_icmpge L5
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 3
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_ID [I
iload 1
iaload
putfield com/common/android/utils/smiley/Smiley/id I
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_GIF_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/gifName Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_TIP [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCosList Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
aload 0
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
arraylength
putfield com/common/android/utils/smiley/Smileyhelper/mCatSize I
iconst_0
istore 1
L6:
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCatSize I
if_icmpge L7
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 3
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
iload 1
iaload
putfield com/common/android/utils/smiley/Smiley/id I
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_TIP [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 3
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_GIF_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/gifName Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCatList Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L6
L7:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$array/no_resource_smiley_tip I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
astore 3
iconst_0
istore 1
getstatic com/common/android/utils/smiley/SmileyValueArray/NO_RESOURCE_ID [I
arraylength
istore 2
L8:
iload 1
iload 2
if_icmpge L9
new com/common/android/utils/smiley/Smiley
dup
invokespecial com/common/android/utils/smiley/Smiley/<init>()V
astore 4
aload 4
getstatic com/common/android/utils/smiley/SmileyValueArray/NO_RESOURCE_ID [I
iload 1
iaload
putfield com/common/android/utils/smiley/Smiley/id I
aload 4
getstatic com/common/android/utils/smiley/SmileyValueArray/NO_RESOURCE_NAME [Ljava/lang/String;
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
aload 4
aload 3
iload 1
aaload
putfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mNoResourceSmiley Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L8
L9:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCatList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mEmojiList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCosList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mNormalList Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mNoResourceSmiley Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
aload 0
invokevirtual com/common/android/utils/smiley/Smileyhelper/initSmileyMap()Ljava/util/Map;
putfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
aload 0
invokespecial com/common/android/utils/smiley/Smileyhelper/initMap()V
aload 0
invokespecial com/common/android/utils/smiley/Smileyhelper/replaceDelSmiley()V
return
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$000(Lcom/common/android/utils/smiley/Smileyhelper;)Z
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mIsOpenSysBrowser Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private checkEmoji(I)I
iload 1
sipush 169
if_icmpeq L0
iload 1
sipush 174
if_icmpne L1
L0:
sipush 2157
ireturn
L1:
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/EMOJI_INTERZONE [I
iconst_0
iaload
if_icmplt L2
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/EMOJI_INTERZONE [I
iconst_1
iaload
if_icmpgt L2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getIdByUnicode(I)I
ireturn
L2:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/EMOJI_VALUES [I
arraylength
istore 3
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/EMOJI_VALUES [I
iconst_0
iaload
if_icmplt L3
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/EMOJI_VALUES [I
iload 3
iconst_1
isub
iaload
if_icmpgt L3
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmpge L3
iload 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/EMOJI_VALUES [I
iload 2
iaload
if_icmpne L5
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getIdByUnicode(I)I
ireturn
L5:
iload 2
iconst_1
iadd
istore 2
goto L4
L3:
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static containEmoji(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
ldc "[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"
bipush 66
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method private getIdBySmileyStr(Ljava/lang/String;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
bipush -2
istore 2
aload 1
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L3
L0:
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
bipush -2
ireturn
L3:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileyIdByTip(Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
getstatic com/common/android/utils/smiley/Smileyhelper/instance Lcom/common/android/utils/smiley/Smileyhelper;
ifnonnull L0
new com/common/android/utils/smiley/Smileyhelper
dup
invokespecial com/common/android/utils/smiley/Smileyhelper/<init>()V
putstatic com/common/android/utils/smiley/Smileyhelper/instance Lcom/common/android/utils/smiley/Smileyhelper;
L0:
getstatic com/common/android/utils/smiley/Smileyhelper/instance Lcom/common/android/utils/smiley/Smileyhelper;
areturn
.limit locals 0
.limit stack 2
.end method

.method private initHistorySmiley()V
aload 0
invokestatic com/common/android/utils/db/CommonDaoFactory/getInstance()Lcom/common/android/utils/db/CommonDaoFactory;
invokevirtual com/common/android/utils/db/CommonDaoFactory/getSmileyHistoryDao()Lcom/common/android/utils/smiley/SmileyHistoryDao;
invokevirtual com/common/android/utils/smiley/SmileyHistoryDao/getSmileyList()Ljava/util/List;
putfield com/common/android/utils/smiley/Smileyhelper/mHistoryList Ljava/util/List;
return
.limit locals 1
.limit stack 2
.end method

.method private initMap()V
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/smiley/Smiley
astore 2
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
aload 2
getfield com/common/android/utils/smiley/Smiley/id I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method private replaceDelSmiley()V
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
ifnull L0
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/smiley/Smiley
astore 2
aload 2
getfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
ldc "smiley/smiley_del.png"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
sipush 993
putfield com/common/android/utils/smiley/Smiley/id I
goto L1
L0:
return
.limit locals 3
.limit stack 2
.end method

.method private seekEmojiArray(Ljava/lang/String;I)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;I)Ljava/util/ArrayList<Lcom/common/android/utils/smiley/Smileyhelper$EMOJI;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 1
invokevirtual java/lang/String/toCharArray()[C
astore 1
aload 1
arraylength
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 1
iload 3
invokestatic java/lang/Character/codePointAt([CI)I
istore 6
aload 0
iload 6
invokespecial com/common/android/utils/smiley/Smileyhelper/checkEmoji(I)I
istore 5
iload 6
invokestatic java/lang/Character/charCount(I)I
istore 6
iload 5
iconst_m1
if_icmpeq L2
aload 7
new com/common/android/utils/smiley/Smileyhelper$EMOJI
dup
aload 0
iload 3
iload 2
iadd
iload 3
iload 2
iadd
iload 6
iadd
iload 5
invokespecial com/common/android/utils/smiley/Smileyhelper$EMOJI/<init>(Lcom/common/android/utils/smiley/Smileyhelper;III)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
iload 3
iload 6
iadd
istore 3
goto L0
L1:
aload 7
areturn
.limit locals 8
.limit stack 7
.end method

.method private valueToEmoji(Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aload 0
aload 1
invokespecial com/common/android/utils/smiley/Smileyhelper/getIdBySmileyStr(Ljava/lang/String;)I
istore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/isEmoji(I)Z
ifne L3
ldc ""
areturn
L3:
aload 0
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 1
aload 1
ifnull L4
aload 1
getfield com/common/android/utils/smiley/Smiley/utf8Code Ljava/lang/String;
astore 1
L0:
new java/lang/String
dup
aload 1
invokestatic com/common/android/utils/StringUtils/hexStringToBytes(Ljava/lang/String;)[B
ldc "utf-8"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
L4:
ldc ""
areturn
.limit locals 3
.limit stack 4
.end method

.method public clearInstance()V
aconst_null
putstatic com/common/android/utils/smiley/Smileyhelper/instance Lcom/common/android/utils/smiley/Smileyhelper;
return
.limit locals 1
.limit stack 1
.end method

.method public convertMXSmileyToIMSmiley(Ljava/lang/String;I)Ljava/lang/String;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
areturn
L0:
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 6
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 7
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 8
aload 0
aload 1
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/seekEmoji(Ljava/lang/String;I)Ljava/lang/String;
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\\"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
aload 1
arraylength
istore 3
iload 3
iconst_1
if_icmpgt L1
aload 9
areturn
L1:
aload 8
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_1
istore 2
L2:
iload 2
iload 3
if_icmpge L3
aload 1
iload 2
aaload
astore 9
aload 9
aload 7
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
iload 4
ifgt L4
aload 8
aload 6
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L2
L4:
aload 0
aload 9
iconst_0
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper/getIdBySmileyStr(Ljava/lang/String;)I
istore 5
iload 5
ifle L6
aload 8
ldc "&<img>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
iload 5
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 8
ldc "<img>&"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
aload 7
invokevirtual java/lang/String/length()I
iload 4
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
L6:
aload 8
aload 6
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
L3:
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 10
.limit stack 4
.end method

.method public convertWeiboEmojiToIMEmoji(Ljava/lang/String;)Ljava/lang/String;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
areturn
L0:
iconst_1
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 6
iconst_1
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 7
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 8
aload 0
aload 1
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/seekEmoji(Ljava/lang/String;I)Ljava/lang/String;
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\\"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
aload 1
arraylength
istore 3
iload 3
iconst_1
if_icmpgt L1
aload 9
areturn
L1:
aload 8
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_1
istore 2
L2:
iload 2
iload 3
if_icmpge L3
aload 1
iload 2
aaload
astore 9
aload 9
aload 7
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
iload 4
ifgt L4
aload 8
aload 6
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L2
L4:
aload 0
aload 9
iconst_0
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper/getIdBySmileyStr(Ljava/lang/String;)I
istore 5
iload 5
ifle L6
aload 0
iload 5
invokevirtual com/common/android/utils/smiley/Smileyhelper/isEmoji(I)Z
ifeq L6
aload 8
ldc "&<img>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
iload 5
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 8
ldc "<img>&"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
aload 7
invokevirtual java/lang/String/length()I
iload 4
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
L6:
aload 8
aload 6
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 8
aload 9
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L5
L3:
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 10
.limit stack 4
.end method

.method public delSmileyFromEdittext(Landroid/widget/EditText;II)I
aload 1
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
ifnonnull L0
iconst_m1
ireturn
L0:
aload 0
aload 1
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iload 2
iload 3
invokevirtual com/common/android/utils/smiley/Smileyhelper/delSmileyFromString(Ljava/lang/String;II)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public delSmileyFromString(Ljava/lang/String;II)I
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_m1
istore 3
L1:
iload 3
ireturn
L0:
iload 3
ifne L2
aload 1
invokevirtual java/lang/String/length()I
ldc "<img>&"
invokevirtual java/lang/String/length()I
ldc "&<img>"
invokevirtual java/lang/String/length()I
iadd
iconst_1
iadd
if_icmpge L3
iconst_m1
ireturn
L3:
ldc "<img>&"
astore 5
ldc "&<img>"
astore 6
L4:
aload 5
aload 5
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 7
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
aload 1
iload 2
iconst_1
isub
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 8
aload 1
aload 6
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 3
aload 1
aload 5
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 4
aload 8
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
iload 4
iconst_m1
if_icmple L5
iload 3
iconst_m1
if_icmple L5
iload 4
iload 3
if_icmple L5
aload 5
invokevirtual java/lang/String/length()I
iload 4
iadd
iload 2
if_icmpeq L1
L5:
iconst_m1
ireturn
L2:
aload 1
invokevirtual java/lang/String/length()I
ldc "]"
invokevirtual java/lang/String/length()I
ldc "["
invokevirtual java/lang/String/length()I
iadd
iconst_1
iadd
if_icmpge L6
iconst_m1
ireturn
L6:
ldc "]"
astore 5
ldc "["
astore 6
goto L4
.limit locals 9
.limit stack 3
.end method

.method public filterNoResourceSmiley(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/StringIndexOutOfBoundsException from L3 to L4 using L2
.catch java/lang/StringIndexOutOfBoundsException from L5 to L6 using L2
.catch java/lang/StringIndexOutOfBoundsException from L6 to L7 using L2
.catch java/lang/StringIndexOutOfBoundsException from L8 to L9 using L2
.catch java/lang/StringIndexOutOfBoundsException from L10 to L11 using L2
.catch java/lang/StringIndexOutOfBoundsException from L12 to L13 using L2
iconst_0
istore 4
iload 3
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 6
iload 3
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 7
new java/lang/StringBuffer
dup
aload 2
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 8
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 8
aload 6
iconst_0
invokevirtual java/lang/StringBuffer/indexOf(Ljava/lang/String;I)I
istore 5
aload 8
aload 7
iconst_0
invokevirtual java/lang/StringBuffer/indexOf(Ljava/lang/String;I)I
istore 3
L14:
iload 5
iconst_m1
if_icmpeq L15
iload 3
iconst_m1
if_icmpeq L15
iload 5
iload 3
if_icmpge L15
L0:
aload 8
aload 6
invokevirtual java/lang/String/length()I
iload 5
iadd
iload 3
invokevirtual java/lang/StringBuffer/substring(II)Ljava/lang/String;
astore 10
aload 0
aload 0
aload 10
invokespecial com/common/android/utils/smiley/Smileyhelper/getIdBySmileyStr(Ljava/lang/String;)I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 11
L1:
iload 4
iload 5
if_icmpeq L4
L3:
aload 9
aload 8
iload 4
iload 5
invokevirtual java/lang/StringBuffer/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
aload 11
ifnonnull L8
L5:
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L6:
iload 3
aload 7
invokevirtual java/lang/String/length()I
iadd
istore 4
aload 8
aload 6
iload 4
invokevirtual java/lang/StringBuffer/indexOf(Ljava/lang/String;I)I
istore 5
aload 8
aload 7
iload 4
invokevirtual java/lang/StringBuffer/indexOf(Ljava/lang/String;I)I
istore 3
L7:
goto L14
L8:
aload 0
aload 1
aload 11
getfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 12
L9:
aload 12
ifnull L12
L10:
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 12
invokevirtual android/graphics/Bitmap/recycle()V
L11:
goto L6
L12:
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L13:
goto L6
L15:
iload 4
aload 8
invokevirtual java/lang/StringBuffer/length()I
if_icmpeq L16
aload 9
aload 8
iload 4
aload 8
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L16:
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L2:
astore 1
aload 2
areturn
.limit locals 13
.limit stack 4
.end method

.method public getEmojiToSend(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/IndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/IndexOutOfBoundsException from L1 to L3 using L2
.catch java/lang/IndexOutOfBoundsException from L4 to L5 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 1
areturn
L6:
iconst_0
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 4
iconst_0
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "([1-9]\\d*|0)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
astore 6
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 3
aload 6
aload 3
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 2
L0:
aload 2
invokevirtual java/util/regex/Matcher/find()Z
ifeq L7
aload 0
aload 3
aload 2
invokevirtual java/util/regex/Matcher/start()I
aload 4
invokevirtual java/lang/String/length()I
iadd
aload 2
invokevirtual java/util/regex/Matcher/end()I
aload 5
invokevirtual java/lang/String/length()I
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper/valueToEmoji(Ljava/lang/String;)Ljava/lang/String;
astore 8
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 7
aload 3
iconst_0
aload 2
invokevirtual java/util/regex/Matcher/end()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 3
aload 2
invokevirtual java/util/regex/Matcher/end()I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
aload 6
aload 3
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 2
L3:
goto L0
L4:
aload 7
aload 3
iconst_0
aload 2
invokevirtual java/util/regex/Matcher/start()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 8
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
goto L1
L2:
astore 2
aload 1
areturn
L7:
aload 7
aload 3
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 9
.limit stack 5
.end method

.method public getHtml(Landroid/text/SpannableString;Ljava/lang/String;Z)Landroid/text/SpannableString;
aload 2
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L0
L1:
aload 1
areturn
L0:
getstatic com/common/android/utils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 2
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 2
aload 1
invokevirtual android/text/SpannableString/length()I
istore 4
L2:
aload 2
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 2
invokevirtual java/util/regex/Matcher/start()I
istore 5
aload 2
invokevirtual java/util/regex/Matcher/end()I
istore 6
aload 2
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokestatic com/common/android/utils/UrlUtils/makeUrl(Ljava/lang/String;)Ljava/lang/String;
astore 7
iload 3
ifne L3
aload 1
new com/common/android/utils/smiley/Smileyhelper$MyUrlSpan
dup
aload 0
aload 7
invokespecial com/common/android/utils/smiley/Smileyhelper$MyUrlSpan/<init>(Lcom/common/android/utils/smiley/Smileyhelper;Ljava/lang/String;)V
iload 5
iload 6
iload 4
invokestatic java/lang/Math/min(II)I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L2
L3:
aload 7
ldc "?"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
aload 1
new com/common/android/utils/smiley/Smileyhelper$MyUrlSpan
dup
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper$MyUrlSpan/<init>(Lcom/common/android/utils/smiley/Smileyhelper;Ljava/lang/String;)V
iload 5
iload 6
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L2
L4:
aload 1
new com/common/android/utils/smiley/Smileyhelper$MyUrlSpan
dup
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper$MyUrlSpan/<init>(Lcom/common/android/utils/smiley/Smileyhelper;Ljava/lang/String;)V
iload 5
iload 6
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L2
.limit locals 8
.limit stack 6
.end method

.method public getHtml(Ljava/lang/String;)Landroid/text/SpannableString;
aload 0
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
aload 1
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getHtml(Landroid/text/SpannableString;Ljava/lang/String;Z)Landroid/text/SpannableString;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getIdByUnicode(I)I
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mUnicodeSmileyMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mUnicodeSmileyMap Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/common/android/utils/smiley/Smiley
getfield com/common/android/utils/smiley/Smiley/id I
ireturn
L0:
sipush 2157
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L5 to L6 using L2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aconst_null
areturn
L7:
aconst_null
astore 3
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getAssets()Landroid/content/res/AssetManager;
astore 4
aload 3
astore 1
L0:
aload 4
aload 2
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 4
L1:
aload 3
astore 1
L3:
aload 4
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 2
L4:
aload 2
astore 1
L5:
aload 4
invokevirtual java/io/InputStream/close()V
L6:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual java/io/IOException/printStackTrace()V
aload 1
areturn
.limit locals 5
.limit stack 2
.end method

.method public getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
iload 1
ifge L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
ifnull L1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/common/android/utils/smiley/Smiley
areturn
.limit locals 2
.limit stack 2
.end method

.method public getSmileyById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
aload 0
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
aload 0
sipush 2157
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 3
L0:
aload 3
ifnonnull L1
L2:
aconst_null
areturn
L1:
aload 0
aload 1
aload 3
getfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 3
aload 3
ifnull L2
new android/graphics/drawable/BitmapDrawable
dup
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 3
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
areturn
.limit locals 5
.limit stack 4
.end method

.method public getSmileyGifResidById(I)I
aload 0
iload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 2
aload 2
ifnull L0
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual com/common/android/utils/AllComPkgNameUtils/getPackageName(Landroid/content/Context;)Ljava/lang/String;
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 2
getfield com/common/android/utils/smiley/Smiley/gifName Ljava/lang/String;
ldc "drawable"
aload 3
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getSmileyIdByTip(Ljava/lang/String;)I
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mTipIdMaps Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mTipIdMaps Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
L0:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "can't find [+"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/smiley/Smiley
astore 3
aload 3
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 3
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 3
getfield com/common/android/utils/smiley/Smiley/id I
ireturn
L2:
bipush -2
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getSmileyList(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"
iload 1
tableswitch 0
L0
L1
L2
L3
L4
default : L5
L5:
aconst_null
areturn
L2:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mEmojiList Ljava/util/List;
areturn
L3:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCosList Ljava/util/List;
areturn
L4:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCatList Ljava/util/List;
areturn
L0:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mHistoryList Ljava/util/List;
ifnull L6
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mHistoryList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L7
L6:
aload 0
invokespecial com/common/android/utils/smiley/Smileyhelper/initHistorySmiley()V
L7:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mHistoryList Ljava/util/List;
areturn
L1:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mNormalList Ljava/util/List;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getSmileyMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/Integer;Lcom/common/android/utils/smiley/Smiley;>;"
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
aload 0
aload 1
iload 2
bipush 32
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/StringIndexOutOfBoundsException from L3 to L4 using L2
.catch java/lang/StringIndexOutOfBoundsException from L5 to L6 using L2
.catch java/lang/StringIndexOutOfBoundsException from L7 to L8 using L2
.catch java/lang/StringIndexOutOfBoundsException from L8 to L9 using L2
.catch java/lang/StringIndexOutOfBoundsException from L10 to L11 using L2
.catch java/lang/StringIndexOutOfBoundsException from L12 to L13 using L2
.catch java/lang/StringIndexOutOfBoundsException from L14 to L15 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 8
aload 0
aload 1
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/seekEmoji(Ljava/lang/String;I)Ljava/lang/String;
astore 1
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 9
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 10
aload 0
aload 8
aload 1
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/filterNoResourceSmiley(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
astore 11
new android/text/SpannableString
dup
aload 11
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 7
aload 11
aload 9
iconst_0
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 2
iload 2
iconst_m1
if_icmpne L16
aload 7
areturn
L16:
aload 11
aload 10
iload 2
iconst_1
iadd
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 5
iload 5
istore 4
iload 5
iconst_m1
if_icmpne L17
aload 7
areturn
L17:
aload 7
astore 1
iload 2
iload 4
if_icmpge L18
L0:
aload 11
iload 2
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
aload 9
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 6
L1:
iload 2
istore 5
iload 6
ifeq L3
iload 2
iload 6
iadd
istore 5
L3:
aload 0
aload 11
aload 9
invokevirtual java/lang/String/length()I
iload 5
iadd
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper/getIdBySmileyStr(Ljava/lang/String;)I
istore 2
L4:
iload 2
bipush -2
if_icmpeq L12
L5:
aload 0
aload 8
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileyById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
iload 3
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 2
L6:
aload 1
ifnull L8
L7:
aload 1
iconst_0
iconst_0
iload 2
iload 2
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 7
new com/common/android/utils/smiley/SmileyImageSpan
dup
aload 1
aload 11
iload 5
aload 10
invokevirtual java/lang/String/length()I
iload 4
iadd
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
invokespecial com/common/android/utils/smiley/SmileyImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
iload 5
aload 10
invokevirtual java/lang/String/length()I
iload 4
iadd
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L8:
aload 11
aload 9
iload 4
aload 10
invokevirtual java/lang/String/length()I
iadd
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 2
L9:
iload 2
iconst_m1
if_icmpne L10
aload 7
astore 1
goto L18
L10:
aload 11
aload 10
iload 2
iconst_1
iadd
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 5
L11:
iload 5
istore 4
iload 5
iconst_m1
if_icmpne L17
aload 7
astore 1
goto L18
L12:
aload 11
aload 9
iload 4
aload 10
invokevirtual java/lang/String/length()I
iadd
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 2
L13:
aload 7
astore 1
iload 2
iconst_m1
if_icmpeq L18
L14:
aload 11
aload 10
iload 2
iconst_1
iadd
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 5
L15:
iload 5
istore 4
iload 5
iconst_m1
if_icmpne L17
aload 7
astore 1
goto L18
L2:
astore 1
new android/text/SpannableString
dup
aload 11
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 1
L18:
aload 1
areturn
.limit locals 12
.limit stack 8
.end method

.method public getUrls(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
getstatic com/common/android/utils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 1
L0:
aload 1
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 2
aload 1
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public getWeiboEmojiToSend(Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 0
aload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/convertWeiboEmojiToIMEmoji(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/getEmojiToSend(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public initSmileyMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/Integer;Lcom/common/android/utils/smiley/Smiley;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
ifnull L0
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 1
areturn
L1:
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mSmileyAllList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/smiley/Smiley
astore 3
aload 1
aload 3
getfield com/common/android/utils/smiley/Smiley/id I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mTipIdMaps Ljava/util/HashMap;
aload 3
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
aload 3
getfield com/common/android/utils/smiley/Smiley/id I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L2
.limit locals 4
.limit stack 3
.end method

.method public isCatID(I)Z
iconst_0
istore 3
iload 3
istore 2
iload 1
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
iconst_0
iaload
if_icmplt L0
iload 3
istore 2
iload 1
getstatic com/common/android/utils/smiley/SmileyValueArray/CAT_ID [I
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCatSize I
iconst_1
isub
iaload
if_icmpgt L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public isContainSimleyId(I)Z
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/smileyMap Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isCosID(I)Z
iconst_0
istore 3
iload 3
istore 2
iload 1
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_ID [I
iconst_0
iaload
if_icmplt L0
iload 3
istore 2
iload 1
getstatic com/common/android/utils/smiley/SmileyValueArray/COS_ID [I
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mCosSize I
iconst_1
isub
iaload
if_icmpgt L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public isEmoji(I)Z
iconst_0
istore 3
iload 3
istore 2
iload 1
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_ID [I
iconst_0
iaload
if_icmplt L0
iload 3
istore 2
iload 1
getstatic com/common/android/utils/smiley/SmileyValueArray/EMOJI_ID [I
aload 0
getfield com/common/android/utils/smiley/Smileyhelper/mEmojiSize I
iconst_1
isub
iaload
if_icmpgt L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public refreshHistorySmiley()V
aload 0
invokespecial com/common/android/utils/smiley/Smileyhelper/initHistorySmiley()V
return
.limit locals 1
.limit stack 1
.end method

.method public seekEmoji(Ljava/lang/String;I)Ljava/lang/String;
ldc ""
astore 9
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
areturn
L0:
aload 1
invokevirtual java/lang/String/toCharArray()[C
astore 12
aload 12
arraylength
istore 5
aload 12
iconst_0
iload 5
invokestatic java/lang/Character/codePointCount([CII)I
newarray int
astore 13
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 14
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 15
iconst_0
istore 4
iconst_0
istore 3
L1:
iload 4
iload 5
if_icmpge L2
aload 12
iload 4
invokestatic java/lang/Character/codePointAt([CI)I
istore 6
aload 13
iload 3
iload 6
iastore
aload 0
iload 6
invokespecial com/common/android/utils/smiley/Smileyhelper/checkEmoji(I)I
istore 7
iload 6
invokestatic java/lang/Character/charCount(I)I
istore 8
iload 7
iconst_m1
if_icmpeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 11
aload 11
astore 10
iload 2
ifeq L4
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 7
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 16
aload 11
astore 10
aload 16
ifnull L4
aload 16
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
astore 10
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
L5:
iload 4
iload 6
invokestatic java/lang/Character/charCount(I)I
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto L1
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iload 4
iload 4
iload 8
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
goto L5
L2:
aload 9
areturn
.limit locals 17
.limit stack 5
.end method

.method public setImageSpannable(Landroid/widget/EditText;III)V
aload 1
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 5
aload 1
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 0
aload 1
iload 2
iload 2
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
iload 2
invokespecial com/common/android/utils/smiley/Smileyhelper/seekEmojiArray(Ljava/lang/String;I)Ljava/util/ArrayList;
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
istore 3
iload 3
ifne L0
L1:
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 32.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 7
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/utils/smiley/Smileyhelper$EMOJI
astore 8
aload 0
aload 7
aload 8
getfield com/common/android/utils/smiley/Smileyhelper$EMOJI/local_smiley_id I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileyById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
astore 9
aload 9
iconst_0
iconst_0
iload 4
iload 4
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 5
new com/common/android/utils/smiley/SmileyImageSpan
dup
aload 9
aload 1
aload 8
getfield com/common/android/utils/smiley/Smileyhelper$EMOJI/start I
aload 8
getfield com/common/android/utils/smiley/Smileyhelper$EMOJI/end I
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
invokespecial com/common/android/utils/smiley/SmileyImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
aload 8
getfield com/common/android/utils/smiley/Smileyhelper$EMOJI/start I
aload 8
getfield com/common/android/utils/smiley/Smileyhelper$EMOJI/end I
bipush 33
invokeinterface android/text/Editable/setSpan(Ljava/lang/Object;III)V 4
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 10
.limit stack 7
.end method

.method public setIsOpenSysBrowser(Z)V
aload 0
iload 1
putfield com/common/android/utils/smiley/Smileyhelper/mIsOpenSysBrowser Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSmiley(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
aload 2
aload 0
aload 1
aload 3
invokevirtual com/common/android/utils/smiley/Smileyhelper/getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 4
.limit stack 4
.end method

.method public setSpannableToEditText(ILandroid/graphics/drawable/Drawable;Landroid/widget/EditText;II)V
aload 3
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 8
aload 3
invokevirtual android/widget/EditText/getSelectionStart()I
istore 6
iload 4
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 9
iload 4
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 10
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 7
iload 4
ifne L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
iload 5
ifle L2
aload 3
invokevirtual android/widget/EditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 7
invokevirtual java/lang/String/length()I
iadd
iload 5
if_icmple L2
return
L0:
aload 7
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
astore 7
goto L1
L2:
aload 8
iload 6
aload 7
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
new com/common/android/utils/smiley/SmileyImageSpan
dup
aload 2
aload 8
iload 6
aload 7
invokevirtual java/lang/String/length()I
iload 6
iadd
invokeinterface android/text/Editable/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
invokespecial com/common/android/utils/smiley/SmileyImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
astore 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 32.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 1
aload 2
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 8
aload 9
iload 6
aload 7
invokevirtual java/lang/String/length()I
iload 6
iadd
bipush 33
invokeinterface android/text/Editable/setSpan(Ljava/lang/Object;III)V 4
aload 3
aload 7
invokevirtual java/lang/String/length()I
iload 6
iadd
invokevirtual android/widget/EditText/setSelection(I)V
aload 3
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
.limit locals 11
.limit stack 7
.end method

.method public setSpannableToEditText(ILandroid/graphics/drawable/Drawable;Landroid/widget/EditText;III)V
aload 0
iload 1
aload 2
aload 3
iload 4
iload 5
iload 6
aconst_null
aconst_null
invokevirtual com/common/android/utils/smiley/Smileyhelper/setSpannableToEditText(ILandroid/graphics/drawable/Drawable;Landroid/widget/EditText;IIILcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;)V
return
.limit locals 7
.limit stack 9
.end method

.method public setSpannableToEditText(ILandroid/graphics/drawable/Drawable;Landroid/widget/EditText;IIILcom/common/android/utils/smiley/SmileyView$GetWordLengthConfig;Lcom/common/android/utils/smiley/SmileyView$OnSmileyCutListener;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 3
.end annotation
aload 3
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 11
aload 3
invokevirtual android/widget/EditText/getSelectionStart()I
istore 9
iload 4
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 12
iload 4
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 13
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 10
iload 4
ifne L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 10
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 12
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 10
iload 5
ifle L2
aload 7
ifnull L3
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual android/widget/EditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/common/android/utils/smiley/SmileyView$GetWordLengthConfig/getWorldLength(Ljava/lang/String;)F 1
iload 5
i2f
fcmpl
ifle L2
aload 8
ifnull L4
aload 8
invokeinterface com/common/android/utils/smiley/SmileyView$OnSmileyCutListener/onSmileyCut()V 0
L4:
return
L0:
aload 10
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
astore 10
goto L1
L3:
iload 4
ifne L5
aload 3
invokevirtual android/widget/EditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 10
invokevirtual java/lang/String/length()I
iadd
iload 5
if_icmpgt L4
L2:
aload 11
iload 9
aload 10
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
new com/common/android/utils/smiley/SmileyImageSpan
dup
aload 2
aload 11
iload 9
aload 10
invokevirtual java/lang/String/length()I
iload 9
iadd
invokeinterface android/text/Editable/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
invokespecial com/common/android/utils/smiley/SmileyImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
astore 7
iload 6
ifle L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
iload 6
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 1
L7:
aload 2
iconst_0
iconst_0
iload 1
iload 1
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 11
aload 7
iload 9
aload 10
invokevirtual java/lang/String/length()I
iload 9
iadd
bipush 33
invokeinterface android/text/Editable/setSpan(Ljava/lang/Object;III)V 4
aload 3
aload 10
invokevirtual java/lang/String/length()I
iload 9
iadd
invokevirtual android/widget/EditText/setSelection(I)V
aload 3
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
L5:
iload 4
iconst_1
if_icmpne L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual android/widget/EditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
iload 5
invokestatic com/product/android/utils/ContentUtils/getWordCount(Ljava/lang/String;ZI)[F
iconst_0
faload
iload 5
i2f
fcmpl
ifle L2
return
L6:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 32.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 1
goto L7
.limit locals 14
.limit stack 7
.end method

.method public showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L17
aload 1
areturn
L17:
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getStartString(I)Ljava/lang/String;
astore 5
iload 2
invokestatic com/common/android/utils/smiley/Smiley/getEndString(I)Ljava/lang/String;
astore 6
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
aload 0
aload 1
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/seekEmoji(Ljava/lang/String;I)Ljava/lang/String;
astore 9
aload 9
aload 5
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 8
L0:
aload 8
arraylength
istore 3
L1:
iload 3
iconst_1
if_icmpgt L3
aload 9
areturn
L3:
aload 7
aload 8
iconst_0
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
iconst_1
istore 2
L18:
iload 2
iload 3
if_icmpge L15
aload 8
iload 2
aaload
astore 9
L5:
aload 9
aload 6
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
L6:
iload 4
ifgt L9
L7:
aload 7
aload 5
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 9
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L8:
goto L19
L9:
aload 0
aload 0
aload 9
iconst_0
iload 4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial com/common/android/utils/smiley/Smileyhelper/getIdBySmileyStr(Ljava/lang/String;)I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 10
L10:
aload 10
ifnull L13
L11:
aload 7
ldc "["
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 10
getfield com/common/android/utils/smiley/Smiley/tip Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 9
aload 6
invokevirtual java/lang/String/length()I
iload 4
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L12:
goto L19
L13:
aload 7
aload 5
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 9
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L14:
goto L19
L15:
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 5
L16:
aload 5
areturn
L19:
iload 2
iconst_1
iadd
istore 2
goto L18
L2:
astore 5
aload 1
areturn
.limit locals 11
.limit stack 5
.end method
