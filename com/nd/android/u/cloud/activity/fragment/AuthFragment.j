.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/AuthFragment
.super com/nd/android/u/cloud/activity/fragment/BaseFragment
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$1
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$2
.inner class private static GetVerificationCodeTask inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask outer com/nd/android/u/cloud/activity/fragment/AuthFragment
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$2

.field public static final 'GETAUTH' I = 257


.field private 'mAuthInput' Lcom/nd/android/u/cloud/view/widge/Item_Input;

.field private 'mGetAuthBtn' Landroid/widget/Button;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mInfo' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;

.field private 'mPhoneTextView' Landroid/widget/TextView;

.field private 'mScheduledExecutorService' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mScheduledFuture' Ljava/util/concurrent/ScheduledFuture; signature "Ljava/util/concurrent/ScheduledFuture<*>;"

.field private 'mSecond' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/<init>()V
aload 0
bipush 60
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mSecond I
aload 0
iconst_1
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
new com/nd/android/u/cloud/activity/fragment/AuthFragment$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment$1/<init>(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;)V
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;I)V
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment/updateUI(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$110(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;)I
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mSecond I
istore 1
aload 0
iload 1
iconst_1
isub
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mSecond I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static newInstance(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;
new com/nd/android/u/cloud/activity/fragment/AuthFragment
dup
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "person_info"
aload 0
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private updateUI(I)V
iload 1
ifle L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setClickable(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
iload 1
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getResources()Landroid/content/res/Resources;
ldc_w 2131493976
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
bipush 60
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mSecond I
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setClickable(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
ldc_w 2130838803
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponent(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/initComponent(Landroid/view/View;)V
aload 0
aload 0
ldc_w 2131493939
aload 1
ldc_w 2131625332
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mAuthInput Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
aload 1
ldc_w 2131625334
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mPhoneTextView Landroid/widget/TextView;
aload 0
aload 1
ldc_w 2131625335
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
ldc_w 2131625336
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mHeaderTitleTextView Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getResources()Landroid/content/res/Resources;
ldc_w 2131493939
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mHeaderLeftButton Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getArguments()Landroid/os/Bundle;
ldc "person_info"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getPhoneNumber()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mPhoneTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "+86 "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "****"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
bipush 8
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getView()Landroid/view/View;
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/initComponent(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624281 : L0
2131625335 : L1
2131625336 : L2
default : L3
L3:
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mAuthInput Lcom/nd/android/u/cloud/view/widge/Item_Input;
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getValue()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getResources()Landroid/content/res/Resources;
ldc_w 2131493940
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L4:
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask
dup
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/<init>(Landroid/app/Activity;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getRealName()Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getPhoneNumber()Ljava/lang/String;
aastore
dup
iconst_2
aload 1
aastore
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setClickable(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mGetAuthBtn Landroid/widget/Button;
ldc_w 2130839031
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/android/u/cloud/activity/fragment/AuthFragment$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment$2/<init>(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;)V
lconst_0
lconst_1
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 6
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
new com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask
dup
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/<init>(Landroid/app/Activity;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/finish()V
return
.limit locals 2
.limit stack 8
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
ldc_w 2130903330
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 3
.end method

.method public onDestroy()V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
invokeinterface java/util/concurrent/ScheduledFuture/isDone()Z 0
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
