.bytecode 50.0
.class public synchronized com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace
.super android/app/Dialog
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$1
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2
.inner class public static abstract interface OnDlgNativePlaceDismissListener inner com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener outer com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace
.inner class private PickerAdapter inner com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter outer com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace

.field private final 'DEFAULT_PRO_CHOISE_FJ' I

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'm_DismissListener' Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener;

.field private 'm_allCities' [[Ljava/lang/String;

.field private 'm_allProvinces' [Ljava/lang/String;

.field private 'm_btnCancel' Landroid/widget/Button;

.field private 'm_btnConfirm' Landroid/widget/Button;

.field 'm_contex' Landroid/content/Context;

.field private 'm_wvCity' Lcom/common/android/ui/wheel/WheelView;

.field private 'm_wvProvince' Lcom/common/android/ui/wheel/WheelView;

.field private 'miDefaultCity' I

.field private 'miDefaultProChoise' I

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_4
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/DEFAULT_PRO_CHOISE_FJ I
aload 0
iconst_4
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultCity I
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/clickListener Landroid/view/View$OnClickListener;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/province I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allProvinces [Ljava/lang/String;
aload 0
bipush 36
anewarray [Ljava/lang/String;
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/anhui I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/aomen I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/beijing I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/chongqing I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/fujian I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/gansu I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/guangdong I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/guangxi I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/guizhou I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hainan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/haiwai I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hebei I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 12
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/henan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 13
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/heilongjiang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 14
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hubei I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 15
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hunan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 16
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/jilin I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 17
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/jiangsu I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 18
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/jiangxi I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 19
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/liaoning I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 20
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/neimenggu I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 21
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/ningxia I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 22
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/qita I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 23
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/qinghai I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 24
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shandong I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 25
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shanxi I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 26
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shanxi2 I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 27
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shanghai I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 28
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/sichuang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 29
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/taiwang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 30
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/tianjin I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 31
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/xizang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 32
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hongkong I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 33
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/xinjiang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 34
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/yunnan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 35
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/zhejiang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
return
.limit locals 3
.limit stack 6
.end method

.method public <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_4
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/DEFAULT_PRO_CHOISE_FJ I
aload 0
iconst_4
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultCity I
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$2/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/clickListener Landroid/view/View$OnClickListener;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/province I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allProvinces [Ljava/lang/String;
aload 0
bipush 36
anewarray [Ljava/lang/String;
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/anhui I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/aomen I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/beijing I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/chongqing I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/fujian I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
iconst_5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/gansu I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/guangdong I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/guangxi I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/guizhou I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hainan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/haiwai I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hebei I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 12
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/henan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 13
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/heilongjiang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 14
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hubei I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 15
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hunan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 16
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/jilin I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 17
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/jiangsu I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 18
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/jiangxi I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 19
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/liaoning I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 20
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/neimenggu I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 21
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/ningxia I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 22
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/qita I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 23
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/qinghai I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 24
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shandong I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 25
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shanxi I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 26
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shanxi2 I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 27
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/shanghai I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 28
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/sichuang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 29
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/taiwang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 30
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/tianjin I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 31
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/xizang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 32
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/hongkong I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 33
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/xinjiang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 34
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/yunnan I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
dup
bipush 35
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$array/zhejiang I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
aastore
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
aload 0
aload 3
aload 4
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/searchIndex(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 6
.end method

.method private GetNativePlace()V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvProvince Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/getCurrentItem()I
istore 1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allProvinces [Ljava/lang/String;
iload 1
aaload
astore 4
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
iload 1
aaload
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/getCurrentItem()I
aaload
astore 5
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/haiwai I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/qita I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L1
L0:
ldc ""
astore 2
aload 4
astore 3
L2:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener;
ifnull L3
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener;
astore 5
aload 3
astore 4
aload 3
ifnonnull L4
ldc ""
astore 4
L4:
aload 2
astore 3
aload 2
ifnonnull L5
ldc ""
astore 3
L5:
aload 5
aload 4
aload 3
invokeinterface com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener/GetNativePlace(Ljava/lang/String;Ljava/lang/String;)V 2
L3:
aload 0
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/dismiss()V
return
L1:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/beijing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L6
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/tianjin I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L6
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/shanghai I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L6
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/chongqing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L6
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hongkong I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L6
aload 5
astore 2
aload 4
astore 3
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/aomen I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L2
L6:
ldc ""
astore 3
aload 5
astore 2
goto L2
.limit locals 6
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;I)V
aload 0
iload 1
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/updateCities(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;)V
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/GetNativePlace()V
return
.limit locals 1
.limit stack 1
.end method

.method private isCityCyclic(I)Z
iload 1
iconst_4
if_icmple L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private searchIndex(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allProvinces [Ljava/lang/String;
arraylength
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allProvinces [Ljava/lang/String;
iload 3
aaload
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L2
aload 0
iload 3
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
L1:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
aaload
astore 1
aload 1
arraylength
istore 4
iconst_0
istore 3
L3:
iload 3
iload 4
if_icmpge L4
aload 2
aload 1
iload 3
aaload
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L5
aload 0
iload 3
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultCity I
L4:
return
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L5:
iload 3
iconst_1
iadd
istore 3
goto L3
.limit locals 5
.limit stack 3
.end method

.method private updateCities(I)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
iload 1
aaload
arraylength
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/isCityCyclic(I)Z
invokevirtual com/common/android/ui/wheel/WheelView/setCyclic(Z)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(I)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/getViewAdapter()Lcom/common/android/ui/wheel/WheelViewAdapter;
checkcast com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
iload 1
aaload
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/resetItem([Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/dlg_set_native_place I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/setContentView(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_cancel I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_btnCancel Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_confirm I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_btnConfirm Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_btnCancel Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_btnConfirm Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/wheel_province I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/wheel/WheelView
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvProvince Lcom/common/android/ui/wheel/WheelView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/wheel_city I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/wheel/WheelView
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvProvince Lcom/common/android/ui/wheel/WheelView;
iconst_1
invokevirtual com/common/android/ui/wheel/WheelView/setCyclic(Z)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvProvince Lcom/common/android/ui/wheel/WheelView;
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter
dup
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allProvinces [Ljava/lang/String;
iconst_0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;Landroid/content/Context;[Ljava/lang/String;I)V
invokevirtual com/common/android/ui/wheel/WheelView/setViewAdapter(Lcom/common/android/ui/wheel/WheelViewAdapter;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvProvince Lcom/common/android/ui/wheel/WheelView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(I)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter
dup
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_contex Landroid/content/Context;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
aaload
iconst_0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$PickerAdapter/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;Landroid/content/Context;[Ljava/lang/String;I)V
invokevirtual com/common/android/ui/wheel/WheelView/setViewAdapter(Lcom/common/android/ui/wheel/WheelViewAdapter;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_allCities [[Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultProChoise I
aaload
arraylength
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/isCityCyclic(I)Z
invokevirtual com/common/android/ui/wheel/WheelView/setCyclic(Z)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvCity Lcom/common/android/ui/wheel/WheelView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/miDefaultCity I
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(I)V
new com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$1/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace;)V
astore 1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_wvProvince Lcom/common/android/ui/wheel/WheelView;
aload 1
invokevirtual com/common/android/ui/wheel/WheelView/addChangingListener(Lcom/common/android/ui/wheel/OnWheelChangedListener;)V
return
.limit locals 2
.limit stack 7
.end method

.method public setOnAfterDismissListener(Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgSetNativePlace/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgSetNativePlace$OnDlgNativePlaceDismissListener;
return
.limit locals 2
.limit stack 2
.end method
