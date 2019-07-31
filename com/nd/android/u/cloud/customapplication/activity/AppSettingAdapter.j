.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter
.super android/widget/BaseAdapter
.inner class static synthetic inner com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$1
.inner class private Holder inner com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder outer com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter

.field private 'appList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;"

.field private 'context' Landroid/app/Activity;

.field private 'mappname' Ljava/lang/String;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/context Landroid/app/Activity;
aload 0
aconst_null
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
aload 0
ldc ""
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/mappname Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/context Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;"
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/<init>(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$1;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/context Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903167
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131624610
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/name Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131624612
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/unann Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131624609
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
aload 2
aload 3
ldc_w 2131624611
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/nextto Landroid/widget/ImageView;
aload 2
aload 3
ldc_w 2131624608
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/apply Landroid/widget/RelativeLayout;
aload 2
aload 3
ldc_w 2131624613
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder
astore 2
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/name Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
bipush 8
invokevirtual android/widget/ToggleButton/setVisibility(I)V
aload 0
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/getCount()I
iconst_1
if_icmpne L1
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/apply Landroid/widget/RelativeLayout;
ldc_w 2130839392
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/context Landroid/app/Activity;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/mappname Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifeq L2
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
iconst_1
invokevirtual android/widget/ToggleButton/setChecked(Z)V
L3:
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/nextto Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/unann Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
areturn
L2:
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
goto L3
L1:
iload 1
ifne L4
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/apply Landroid/widget/RelativeLayout;
ldc_w 2130839389
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V 3
L5:
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
iconst_m1
if_icmpne L6
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/context Landroid/app/Activity;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/mappname Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifeq L7
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
iconst_1
invokevirtual android/widget/ToggleButton/setChecked(Z)V
L8:
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/nextto Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/unann Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
areturn
L4:
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
iconst_m1
if_icmpne L9
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/apply Landroid/widget/RelativeLayout;
ldc_w 2130839391
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
goto L5
L9:
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/apply Landroid/widget/RelativeLayout;
ldc_w 2130839390
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/logo Landroid/widget/ImageView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 4
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V 3
goto L5
L7:
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/mswitchremindcb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
goto L8
L6:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/isInstallApp(Lcom/product/android/commonInterface/contact/OapApp;)Z 1
ifeq L10
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/nextto Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/unann Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
areturn
L10:
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/nextto Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter$Holder/unann Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setAppList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/appList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setMappname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/mappname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
