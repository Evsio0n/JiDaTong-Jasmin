.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter
.super android/widget/BaseAdapter
.inner class public static Holder inner com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mListUser' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"

.field private 'mNowDate' Ljava/util/Calendar;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mContext Landroid/content/Context;
aload 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
putfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mNowDate Ljava/util/Calendar;
return
.limit locals 2
.limit stack 2
.end method

.method private convertDay(Ljava/lang/String;)Ljava/lang/String;
.catch java/text/ParseException from L0 to L1 using L2
.catch java/text/ParseException from L1 to L3 using L2
.catch java/text/ParseException from L3 to L4 using L2
L0:
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthDateFormat()Ljava/text/DateFormat;
aload 1
invokevirtual java/text/DateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 3
aload 3
aload 2
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 3
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mNowDate Ljava/util/Calendar;
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpne L1
aload 3
iconst_2
invokevirtual java/util/Calendar/get(I)I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mNowDate Ljava/util/Calendar;
iconst_2
invokevirtual java/util/Calendar/get(I)I
if_icmpne L1
aload 3
iconst_5
invokevirtual java/util/Calendar/get(I)I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mNowDate Ljava/util/Calendar;
iconst_5
invokevirtual java/util/Calendar/get(I)I
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mContext Landroid/content/Context;
ldc_w 2131495417
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L1:
aload 3
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mNowDate Ljava/util/Calendar;
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpne L3
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirtheDateShowFormatter()Ljava/text/DateFormat;
aload 2
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L3:
getstatic com/product/android/utils/TimeUtils/DATE_FORMATTER_YMD Ljava/text/SimpleDateFormat;
aload 2
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 2
L4:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual java/text/ParseException/printStackTrace()V
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mListUser Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mListUser Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903484
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder
dup
invokespecial com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/<init>()V
astore 3
aload 3
aload 2
ldc_w 2131625958
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDate Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131625959
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDescription Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mListUser Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
astore 4
aload 3
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDescription Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getDescription()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
ifeq L2
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getBirthday()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mListUser Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getBirthday()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 3
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDate Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L3:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDescription Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getDescription()Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/resolveAt(Ljava/lang/String;)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDate Landroid/widget/TextView;
aload 0
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getBirthday()Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/convertDay(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter$Holder/tvDate Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L3
.limit locals 5
.limit stack 4
.end method

.method public setUserList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/mbless/BirthdayRemAdapter/mListUser Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
