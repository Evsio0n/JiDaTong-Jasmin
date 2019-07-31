.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity
.super android/app/Activity
.inner class inner com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity$1
.inner class inner com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity$2

.field public static final 'STR_CANCEL_BTN' Ljava/lang/String; = "\u53d6\u6d88"

.field public static final 'STR_CONFIRM_BTN' Ljava/lang/String; = "\u786e\u5b9a"

.field public static final 'STR_DIALOG_CONTENT' Ljava/lang/String; = "\u4eb2\u7231\u7684\u7528\u6237\uff0c\u76ee\u524d\u6b63\u5728\u5f3a\u5236\u5347\u7ea7\u4e2d\uff0c\u8bf7\u5728\u5347\u7ea7\u5b8c\u6bd5\u540e\uff0c\u7ee7\u7eed\u8bbf\u95ee\u3002"

.field public static final 'STR_DIALOG_TITLE' Ljava/lang/String; = "\u76ee\u524d\u6b63\u5728\u5f3a\u5236\u5347\u7ea7\u4e2d"

.field public static final 'TAG' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$0(Lcom/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity;)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/exitDialog()V
return
.limit locals 1
.limit stack 1
.end method

.method private exitDialog()V
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/exitSoft()V
return
.limit locals 1
.limit stack 0
.end method

.method private initData()V
aload 0
aload 0
ldc "tvVerNumber"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 0
aload 0
ldc "tvVerContentTip"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
aload 0
ldc "ivForceUpgrade"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
iconst_0
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/setFinishOnTouchOutside(Z)V
L0:
aload 3
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
ldc "\u76ee\u524d\u6b63\u5728\u5f3a\u5236\u5347\u7ea7\u4e2d"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
ldc "\u4eb2\u7231\u7684\u7528\u6237\uff0c\u76ee\u524d\u6b63\u5728\u5f3a\u5236\u5347\u7ea7\u4e2d\uff0c\u8bf7\u5728\u5347\u7ea7\u5b8c\u6bd5\u540e\uff0c\u7ee7\u7eed\u8bbf\u95ee\u3002"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
ldc "llApkSize"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 0
ldc "tvApkFullSize"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
aload 0
ldc "tvApkIncrementalSize"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 4
.limit stack 3
.end method

.method private initEvent()V
aload 0
aload 0
ldc "btnUpdateNow"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
ldc "\u786e\u5b9a"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 1
new com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity$1
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity$1/<init>(Lcom/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc "btnUpdateLater"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
ldc "\u53d6\u6d88"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 1
new com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity$2
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity$2/<init>(Lcom/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/exitDialog()V
aload 0
invokespecial android/app/Activity/onBackPressed()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
ldc "activity_upgrade_dialog"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/setContentView(I)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/initData()V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method
