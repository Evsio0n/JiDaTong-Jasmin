.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;

.method <init>(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
invokestatic com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/access$000(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;)Lcom/nd/android/u/cloud/customapplication/activity/AppSettingAdapter;
iload 3
invokevirtual com/nd/android/u/cloud/customapplication/activity/AppSettingAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
astore 1
aload 2
ldc_w 2131624612
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
iconst_m1
if_icmpne L0
aload 2
ldc_w 2131624613
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
astore 1
aload 1
invokevirtual android/widget/ToggleButton/isChecked()Z
ifeq L1
aload 1
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
iconst_0
invokestatic com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/access$100(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;Z)V
return
L1:
aload 1
iconst_1
invokevirtual android/widget/ToggleButton/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
iconst_1
invokestatic com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/access$100(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;Z)V
return
L0:
aload 6
invokevirtual android/widget/TextView/isShown()Z
ifeq L2
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/showAppDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V 2
return
L2:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
aconst_null
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$1/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
iconst_0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V 5
return
.limit locals 7
.limit stack 6
.end method
