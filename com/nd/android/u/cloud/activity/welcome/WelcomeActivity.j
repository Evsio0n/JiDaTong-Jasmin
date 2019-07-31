.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/WelcomeActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class static synthetic inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$1
.inner class static GetDefaultPic inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic outer com/nd/android/u/cloud/activity/welcome/WelcomeActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1
.inner class private GetSecPhoneTask inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask outer com/nd/android/u/cloud/activity/welcome/WelcomeActivity

.field private static final 'WELCOME_HEAD_SET_REQUEST_CODE' I = 600


.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private lunchBindPhoneActivity()V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/guide/BindPhoneActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 1
.limit stack 5
.end method

.method private lunchMainActivity()V
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 600
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getIsBindPhone()Z
ifeq L1
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity/lunchMainActivity()V
L2:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/finish()V
L0:
return
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUapUid()J
lconst_0
lcmp
ifne L3
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity/lunchMainActivity()V
goto L2
L3:
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity/lunchBindPhoneActivity()V
goto L2
.limit locals 4
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624476
L0
default : L1
L1:
return
L0:
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 600
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903133
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/setContentView(I)V
aconst_null
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 2
aload 2
ifnull L0
aload 2
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
astore 1
L0:
aload 1
astore 2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc ""
astore 2
L1:
aload 0
ldc_w 2131624208
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
aload 0
ldc_w 2131493846
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131624476
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
new com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo
dup
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/<init>(Landroid/app/Activity;Z)V
iconst_1
anewarray com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams
dup
iconst_0
new com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/<init>()V
aastore
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
new com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic
dup
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity/getApplicationContext()Landroid/content/Context;
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/<init>(Landroid/content/Context;)V
iconst_0
anewarray java/lang/String
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
new com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 7
.end method
