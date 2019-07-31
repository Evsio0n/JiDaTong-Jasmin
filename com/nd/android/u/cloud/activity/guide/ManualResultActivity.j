.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/ManualResultActivity
.super com/product/android/ui/activity/HeaderActivity

.field public static final 'INIT_TYPE' Ljava/lang/String; = "type"

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private onClickCustomerServicePhone()V
aload 0
ldc_w 2131624258
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 0
new android/content/Intent
dup
ldc "android.intent.action.DIAL"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tel:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903090
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/initEvent()V
aload 0
ldc_w 2131494005
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/setActivityTitle(I)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public dealOnClickManual(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624258
L0
default : L1
L1:
return
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/ManualResultActivity/onClickCustomerServicePhone()V
return
.limit locals 2
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
ldc_w 2131624258
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 2
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
astore 3
new android/text/SpannableString
dup
aload 3
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 4
aload 4
new android/text/style/UnderlineSpan
dup
invokespecial android/text/style/UnderlineSpan/<init>()V
iconst_5
aload 3
invokeinterface java/lang/CharSequence/length()I 0
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 2
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493975
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
ldc_w 2130837933
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
ldc_w 2131624281
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/getIntent()Landroid/content/Intent;
ldc "type"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
iload 1
iconst_1
if_icmpne L0
aload 0
ldc_w 2131624255
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493958
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131624256
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493960
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
iload 1
iconst_2
if_icmpne L1
aload 0
ldc_w 2131624255
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493935
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131624256
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493936
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected rightBtnHandle()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/rightBtnHandle()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualResultActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method
