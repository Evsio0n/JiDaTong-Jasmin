.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/BirthdayRemindPro
.super java/lang/Object

.field public static final 'KEY_BIRTHREM_TIME' Ljava/lang/String; = "birthdayremind_time"

.field private static 'mPreferenceHelper' Lcom/product/android/utils/SharedPreferenceHelper;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static formatBirth(Ljava/lang/String;)Ljava/lang/String;
.catch java/text/ParseException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 0
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirtheDateShowFormatter()Ljava/text/DateFormat;
aload 0
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/text/ParseException/printStackTrace()V
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public static generateDes(Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;Ljava/util/Date;)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserType()I
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/birthday_bless I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getBirthday()Ljava/lang/String;
aload 1
invokestatic com/product/android/utils/TimeUtils/getDayBetween(Ljava/lang/String;Ljava/util/Date;)I
istore 2
iload 2
ifle L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getDayDes(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getBirthday()Ljava/lang/String;
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/formatBirth(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/birthday_gift I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/birthday_bless I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 6
.end method

.method public static getBirthDateFormat()Ljava/text/DateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyyMMdd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
areturn
.limit locals 0
.limit stack 3
.end method

.method public static getBirthRemHistory(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
pop2
ldc com/nd/android/u/contact/dao/BirthdayRemindHistoryDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/BirthdayRemindHistoryDao
iload 0
iload 1
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindHistoryDao/getHistoryList(II)Ljava/util/List; 2
astore 2
aload 2
invokestatic java/util/Collections/reverse(Ljava/util/List;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getBirtheDateShowFormatter()Ljava/text/DateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM\u6708dd\u65e5"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
areturn
.limit locals 0
.limit stack 3
.end method

.method public static getDayDes(I)Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 1
iload 0
tableswitch 1
L0
L1
L2
L3
L4
default : L5
L5:
aload 1
getstatic com/nd/android/u/contact/R$string/today I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L0:
aload 1
getstatic com/nd/android/u/contact/R$string/tomorrow I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L1:
aload 1
getstatic com/nd/android/u/contact/R$string/day_after_tomorrow I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L2:
aload 1
getstatic com/nd/android/u/contact/R$string/after_threedays I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L3:
aload 1
getstatic com/nd/android/u/contact/R$string/after_fourdays I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L4:
aload 1
getstatic com/nd/android/u/contact/R$string/after_fivedays I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static isNeedUpdate(J)Z
getstatic com/nd/android/u/contact/business/BirthdayRemindPro/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
ifnonnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
putstatic com/nd/android/u/contact/business/BirthdayRemindPro/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
L0:
getstatic com/nd/android/u/contact/business/BirthdayRemindPro/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "birthdayremind_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadLongKey(Ljava/lang/String;J)J
lstore 0
lload 0
lconst_0
lcmp
ifne L1
iconst_1
ireturn
L1:
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
lload 2
lload 0
lsub
ldc2_w 86400000L
lcmp
iflt L2
iconst_1
ireturn
L2:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 6
aload 6
bipush 11
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
bipush 13
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
bipush 12
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
bipush 14
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 4
lload 4
lload 0
lcmp
ifle L3
lload 4
lload 2
lcmp
ifgt L3
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 7
.limit stack 4
.end method

.method public static processNewRemind()Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch java/text/ParseException from L4 to L5 using L6
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L9
iconst_0
ireturn
L9:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
lload 2
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/isNeedUpdate(J)Z
ifne L10
iconst_0
ireturn
L10:
lload 2
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/saveUpdateTime(J)V
ldc com/nd/android/u/contact/dao/BirthdayRemindDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/BirthdayRemindDao
astore 6
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L7
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getBirthRemindList()Ljava/util/List;
astore 4
L1:
aload 6
aload 4
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindDao/insertList(Ljava/util/List;)V 1
L3:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
astore 4
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 4
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 7
L4:
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 7
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 5
L5:
aload 5
astore 4
L11:
aload 8
aload 4
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 8
iconst_5
aload 8
iconst_5
invokevirtual java/util/Calendar/get(I)I
bipush 30
isub
invokevirtual java/util/Calendar/set(II)V
aload 6
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 8
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindDao/deleteBefDay(Ljava/lang/String;)Z 1
pop
aload 6
ldc "="
aload 7
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindDao/getBirthdayRemindOrcDay(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 2
astore 5
aload 8
iconst_5
aload 8
iconst_5
invokevirtual java/util/Calendar/get(I)I
bipush 31
iadd
invokevirtual java/util/Calendar/set(II)V
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 8
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 10
aload 8
iconst_5
aload 8
iconst_5
invokevirtual java/util/Calendar/get(I)I
iconst_4
iadd
invokevirtual java/util/Calendar/set(II)V
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 8
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 9
aload 6
aload 9
aload 10
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindDao/getLoveBirthdayRemindOrcDay(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 2
astore 8
aload 6
ldc "<"
aload 7
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindDao/getBirthdayRemindOrcDay(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 2
astore 10
aload 5
invokeinterface java/util/List/size()I 0
ifgt L12
aload 8
invokeinterface java/util/List/size()I 0
ifgt L12
aload 10
invokeinterface java/util/List/size()I 0
ifle L13
L12:
aload 6
aload 7
aload 9
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindDao/updateMindState(Ljava/lang/String;Ljava/lang/String;)V 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 6
aload 10
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 6
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 6
aload 8
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iconst_0
istore 0
aload 6
invokeinterface java/util/List/size()I 0
istore 1
L14:
iload 0
iload 1
if_icmpge L15
aload 6
iload 0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
astore 9
aload 9
aload 9
aload 4
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/generateDes(Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;Ljava/util/Date;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setDescription(Ljava/lang/String;)V
iload 0
iconst_1
iadd
istore 0
goto L14
L7:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapAppCom()Lcom/nd/android/u/contact/com/OapAppCom;
invokevirtual com/nd/android/u/contact/com/OapAppCom/getXYBirthRemindList()Ljava/util/List;
astore 4
L8:
goto L1
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L3
L6:
astore 5
aload 5
invokevirtual java/text/ParseException/printStackTrace()V
goto L11
L15:
aload 8
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L16:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L17
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setBirthday(Ljava/lang/String;)V
goto L16
L17:
ldc com/nd/android/u/contact/dao/BirthdayRemindHistoryDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/BirthdayRemindHistoryDao
aload 6
invokeinterface com/nd/android/u/contact/dao/BirthdayRemindHistoryDao/insertList(Ljava/util/List;)V 1
L13:
aload 5
invokeinterface java/util/List/size()I 0
ifgt L18
aload 8
invokeinterface java/util/List/size()I 0
ifle L19
L18:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
iconst_0
istore 0
aload 5
invokeinterface java/util/List/size()I 0
istore 1
L20:
iload 0
iload 1
if_icmpge L21
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u3001"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
iload 0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 0
iconst_1
iadd
istore 0
goto L20
L21:
iconst_0
istore 0
aload 8
invokeinterface java/util/List/size()I 0
istore 1
L22:
iload 0
iload 1
if_icmpge L23
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u3001"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
iload 0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 0
iconst_1
iadd
istore 0
goto L22
L23:
aload 4
iconst_0
iconst_1
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/birthday I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/chatDipatchMessage(Ljava/lang/String;)V
L19:
invokestatic com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm/stopAlarm()V
invokestatic com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm/startAlarm()V
iconst_1
ireturn
.limit locals 11
.limit stack 4
.end method

.method private static saveUpdateTime(J)V
getstatic com/nd/android/u/contact/business/BirthdayRemindPro/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
ifnonnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
putstatic com/nd/android/u/contact/business/BirthdayRemindPro/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
L0:
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
getstatic com/nd/android/u/contact/business/BirthdayRemindPro/mPreferenceHelper Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "birthdayremind_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lload 2
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
return
.limit locals 4
.limit stack 4
.end method
