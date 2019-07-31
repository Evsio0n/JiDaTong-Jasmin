.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/MenuActivity
.super android/app/Activity
.inner class inner com/nd/schoollife/ui/square/activity/MenuActivity$1
.inner class inner com/nd/schoollife/ui/square/activity/MenuActivity$2
.inner class inner com/nd/schoollife/ui/square/activity/MenuActivity$3
.inner class inner com/nd/schoollife/ui/square/activity/MenuActivity$4

.field public static final 'CANCEL' I = 0


.field public static final 'CREATE_COMMUNITY' I = 2


.field public static final 'CREATE_TEAM' I = 1


.field public static final 'MENU_REQUEST_CODE' I = 1


.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/activity/MenuActivity;I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/square/activity/MenuActivity/selfFinsh(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private init()V
aload 0
getstatic com/nd/schoollife/R$id/rl_chage_usr_img_popmenu I
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 1
aload 1
invokevirtual android/widget/RelativeLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 2
aload 2
aload 0
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/getScreenWidth(Landroid/content/Context;)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
aload 2
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
new com/nd/schoollife/ui/square/activity/MenuActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MenuActivity$1/<init>(Lcom/nd/schoollife/ui/square/activity/MenuActivity;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_chage_img_cancel I
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
new com/nd/schoollife/ui/square/activity/MenuActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MenuActivity$2/<init>(Lcom/nd/schoollife/ui/square/activity/MenuActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_chage_img_from_camera I
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
ldc "\u521b\u5efa\u5c0f\u7ec4"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 1
new com/nd/schoollife/ui/square/activity/MenuActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MenuActivity$3/<init>(Lcom/nd/schoollife/ui/square/activity/MenuActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_chage_img_from_photos I
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
ldc "\u521b\u5efa\u56e2\u4f53"
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 1
new com/nd/schoollife/ui/square/activity/MenuActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MenuActivity$4/<init>(Lcom/nd/schoollife/ui/square/activity/MenuActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method private selfFinsh(I)V
aload 0
iload 1
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/setResult(I)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/finish()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/schoollife/R$layout/popmenu_change_usrimg I
invokevirtual com/nd/schoollife/ui/square/activity/MenuActivity/setContentView(I)V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MenuActivity/init()V
return
.limit locals 2
.limit stack 2
.end method
